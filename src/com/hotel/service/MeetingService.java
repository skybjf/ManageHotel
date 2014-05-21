package com.hotel.service;

import com.hotel.base.PageObject;
import com.hotel.model.Meeting;

public interface MeetingService {

	boolean addMeeting(Meeting meeting);

	boolean updateMeeting(Meeting meeting);

	PageObject selsectMeeting(int page, int pageSize);
}
