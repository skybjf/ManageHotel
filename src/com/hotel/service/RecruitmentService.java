package com.hotel.service;

import com.hotel.base.PageObject;
import com.hotel.model.Recruitment;

public interface RecruitmentService {

	boolean addRecruitment(Recruitment recruitment);

	boolean updateRecruitment(Recruitment recruitment);

	boolean delRecruitment(Recruitment recruitment);

	PageObject selectRecruitment(int pageSize, int page);
}
