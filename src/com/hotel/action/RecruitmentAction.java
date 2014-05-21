package com.hotel.action;

import com.hotel.model.Recruitment;
import com.hotel.service.RecruitmentService;
import com.hotel.util.PrintWriterUtil;
import com.opensymphony.xwork2.ActionSupport;

public class RecruitmentAction extends ActionSupport {
	private static final long serialVersionUID = -1239069889527743623L;
	private RecruitmentService recruitmentService;
	private Recruitment recruitment;

	public String addRecruitment() {
		System.out.println(recruitment.toLogString());
		boolean flag = this.recruitmentService.addRecruitment(recruitment);
		if (flag) {
			PrintWriterUtil.getPrintWriter().write("success");
		} else {
			PrintWriterUtil.getPrintWriter().write("fail");
		}
		return null;
	}

	public String delRecruitment() {
		boolean flag = this.recruitmentService.delRecruitment(recruitment);
		if (flag) {
			PrintWriterUtil.getPrintWriter().write("success");
		} else {
			PrintWriterUtil.getPrintWriter().write("fail");
		}
		return null;
	}

	public RecruitmentService getRecruitmentService() {
		return recruitmentService;
	}

	public void setRecruitmentService(RecruitmentService recruitmentService) {
		this.recruitmentService = recruitmentService;
	}

	public Recruitment getRecruitment() {
		return recruitment;
	}

	public void setRecruitment(Recruitment recruitment) {
		this.recruitment = recruitment;
	}

}
