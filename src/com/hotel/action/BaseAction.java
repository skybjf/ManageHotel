package com.hotel.action;

import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.hotel.dao.BaseDao;
import com.hotel.enums.TablesEnum;
import com.hotel.model.Meeting;
import com.hotel.model.News;
import com.hotel.model.Recruitment;
import com.hotel.model.RoomType;
import com.hotel.util.HotelUtils;
import com.hotel.util.PrintWriterUtil;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport {

	private static final long serialVersionUID = -6708883628890353623L;
	private BaseDao baseDao;

	public String infoCenter() {
		List<?> recruit;
		String hql1 = "from " + TablesEnum.RECRUITMENT.getTableName() + " order by id desc";

		List<?> news;
		String hql2 = "from " + TablesEnum.NEWS.getTableName() + " order by id desc";

		List<?> meetings;
		String hql3 = "from " + TablesEnum.MEETING.getTableName() + " order by id desc ";

		List<?> discount;
		String hql4 = "from com.hotel.model." + TablesEnum.ROOMTYPE.getTableName() + "  order by id desc ";
		recruit = baseDao.selectObject(hql1);
		System.out.println(hql2);
		news = baseDao.selectObject(hql2);
		meetings = baseDao.selectObject(hql3);

		discount = baseDao.selectObject(hql4);
		JSONObject js = this.toJSON(recruit, news, meetings, discount);
		System.out.println(js.toString());
		PrintWriterUtil.getJsonPrintWriter().write(js.toString());
		return null;
	}

	public JSONObject toJSON(List recruit, List news, List meetings, List discount) {
		JSONObject json = new JSONObject();
		JSONArray recruitArr = new JSONArray();
		JSONArray newsArr = new JSONArray();
		JSONArray meetingsArr = new JSONArray();
		JSONArray discountArr = new JSONArray();
		for (Object obj : recruit) {
			Recruitment r = (Recruitment) obj;
			JSONObject recruitTmp = new JSONObject();
			recruitTmp.put("id", r.getId());
			recruitTmp.put("title", r.getName());
			recruitTmp.put("content", "<div><b>月薪</b>：" + (r.getSalary() == 0 ? "面议。" : r.getSalary()) + "元<b>招聘人数</b>："
					+ (r.getPeopleNumber() == 0 ? "若干。" : r.getPeopleNumber()) + "</div><p>" + r.getDescription() + "</p>");
			recruitTmp.put("time", r.getPublished());
			recruitArr.add(recruitTmp);
		}
		json.put("zhaopin", recruitArr);
		for (Object obj : news) {
			News n = (News) obj;
			JSONObject newTmp = new JSONObject();
			newTmp.put("id", n.getId());
			newTmp.put("title", n.getTitle());
			newTmp.put("content", n.getContent());
			newTmp.put("time", n.getPublished());
			newsArr.add(newTmp);
		}
		json.put("news", newsArr);
		for (Object obj : meetings) {
			Meeting m = (Meeting) obj;
			JSONObject meetTmp = new JSONObject();
			meetTmp.put("id", m.getId());
			meetTmp.put("title", m.getTheme());
			meetTmp.put("content", m.getDescription());
			meetTmp.put("time", m.getTime());
			meetingsArr.add(meetTmp);
		}
		json.put("meeting", meetingsArr);
		for (Object obj : discount) {
			RoomType room = (RoomType) obj;
			JSONObject roomType = new JSONObject();
			roomType.put("id", room.getId());
			roomType.put("title", room.getName());
			roomType.put("content", "折扣：" + room.getDiscount() + "&nbsp;&nbsp;<br/>房间描述：" + room.getDescription());
			roomType.put("time", HotelUtils.getCurrentTime());
			discountArr.add(roomType);
		}
		json.put("discount", discountArr);
		return json;
	}

	public BaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

}
