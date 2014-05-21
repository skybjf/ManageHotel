package com.hotel.service.imp;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import com.hotel.base.PageObject;
import com.hotel.dao.RecruitmentDao;
import com.hotel.enums.TablesEnum;
import com.hotel.model.Recruitment;
import com.hotel.service.PageObjectService;
import com.hotel.service.RecruitmentService;
import com.hotel.util.HotelUtils;

public class RecruitmentServiceImp implements RecruitmentService {

	private RecruitmentDao recruitmentDao;
	private PageObjectService pageService;

	public RecruitmentDao getRecruitmentDao() {
		return recruitmentDao;
	}

	public void setRecruitmentDao(RecruitmentDao recruitmentDao) {
		this.recruitmentDao = recruitmentDao;
	}

	public PageObjectService getPageService() {
		return pageService;
	}

	public void setPageService(PageObjectService pageService) {
		this.pageService = pageService;
	}

	public boolean addRecruitment(Recruitment recruitment) {
		try {
			recruitment.setName(URLDecoder.decode(recruitment.getName(), "UTF-8"));
			recruitment.setDescription(URLDecoder.decode(recruitment.getDescription(), "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		if (recruitment.getSalary() == null || recruitment.getSalary() == 0) {
			recruitment.setSalary(0f);
		}
		if (recruitment.getPeopleNumber() == null || recruitment.getPeopleNumber() == 0) {
			recruitment.setPeopleNumber(0);
		}
		recruitment.setPublished(HotelUtils.getCurrentTime());
		recruitment.setDelMark("0");
		System.out.println(recruitment.toLogString());
		return this.recruitmentDao.saveObject(recruitment);
	}

	public boolean updateRecruitment(Recruitment recruitment) {
		return this.recruitmentDao.updateObject(recruitment);
	}

	public PageObject selectRecruitment(int pageSize, int page) {
		String hql = "from " + TablesEnum.RECRUITMENT.getTableName();
		return this.pageService.queryForPage(hql, pageSize, page);
	}

	public boolean delRecruitment(Recruitment recruitment) {
		return this.recruitmentDao.delObject(recruitment);
	}

}
