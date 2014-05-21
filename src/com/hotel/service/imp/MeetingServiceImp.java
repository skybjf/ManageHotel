package com.hotel.service.imp;

import com.hotel.base.PageObject;
import com.hotel.dao.MeetingDao;
import com.hotel.enums.TablesEnum;
import com.hotel.model.Meeting;
import com.hotel.service.MeetingService;
import com.hotel.service.PageObjectService;

public class MeetingServiceImp implements MeetingService {

	private MeetingDao meetingDao;
	private PageObjectService pageService;

	public boolean addMeeting(Meeting meeting) {
		return this.meetingDao.saveObject(meeting);
	}

	public boolean updateMeeting(Meeting meeting) {
		// TODO Auto-generated method stub
		return this.meetingDao.updateObject(meeting);
	}

	public PageObject selsectMeeting(int page, int pageSize) {
		String hql = "from " + TablesEnum.MEETING.getTableName();
		return pageService.queryForPage(hql, pageSize, page);
	}

	public PageObjectService getPageService() {
		return pageService;
	}

	public void setPageService(PageObjectService pageService) {
		this.pageService = pageService;
	}

	public MeetingDao getMeetingDao() {
		return meetingDao;
	}

	public void setMeetingDao(MeetingDao meetingDao) {
		this.meetingDao = meetingDao;
	}

}
