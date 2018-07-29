package com.rwy.entity;

import java.util.Date;

public class Log {
	//日志编号
	private Integer id;
	//用户id
	private User user;
	//标题
	private String title;
	//时间
	private Date time;
	//网吧地区
	private String icaddress;
	//网吧编号
	private Long icnum;
	//网吧问题
	private String icp;
	//网吧联系人
	private String contact;
	//联系人电话
	private String phone;
	//QQ
	private String QQ;
	//导致原因
	private String cause;
	//解决方案
	private String solution;
	//问题来源
	private String sop;
	//关键字
	private String keyword;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public Long getIcnum() {
		return icnum;
	}
	public void setIcnum(Long icnum) {
		this.icnum = icnum;
	}
	public String getIcp() {
		return icp;
	}
	public String getIcaddress() {
		return icaddress;
	}
	public void setIcaddress(String icaddress) {
		this.icaddress = icaddress;
	}
	public void setIcp(String icp) {
		this.icp = icp;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public String getCause() {
		return cause;
	}
	public void setCause(String cause) {
		this.cause = cause;
	}
	public String getSolution() {
		return solution;
	}
	public void setSolution(String solution) {
		this.solution = solution;
	}
	public String getSop() {
		return sop;
	}
	public void setSop(String sop) {
		this.sop = sop;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
}
