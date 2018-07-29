package com.rwy.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.rwy.dao.LogDao;
import com.rwy.entity.Log;
import com.rwy.service.LogService;

@Service
public class LogServiceImpl implements LogService{

	@Autowired
	private LogDao logDao;
	

	@Override
	public int addlog(Log log) {
		return logDao.saveLog(log);
		
	}

	@Override
	public List<Log> getLogByUserId(String keyword,Date starttime,Date endtime ,Integer id) {
	
				if(StringUtils.hasText(keyword)) {
					return logDao.list(id,keyword,starttime,endtime);
				}else {
					return logDao.getlist(id);
				}
				
	}

	@Override
	public List<Log> getLogAllByUserId(String keyword, Date starttime,
			Date endtime) {
		if(StringUtils.hasText(keyword)) {
			return logDao.listAll(keyword, starttime, endtime);
		}else {
			return logDao.getlistAll();
		}
	}

}
