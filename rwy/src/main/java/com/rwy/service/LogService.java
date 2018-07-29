package com.rwy.service;


import java.util.Date;
import java.util.List;

import com.rwy.entity.Log;

public interface LogService {

	List<Log> getLogByUserId(String keyword, Date starttime, Date endtime, Integer id);

	int addlog(Log log);

	List<Log> getLogAllByUserId(String keyword, Date starttime, Date endtime);

}
