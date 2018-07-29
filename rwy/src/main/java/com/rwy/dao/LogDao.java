package com.rwy.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.rwy.entity.Log;

@Mapper
public interface LogDao {

	/**
	 * 新增日志记录
	 * @param log 日志对象
	 * @return 受影响的行数
	 */
	int saveLog(Log log);

	/**
	 * 根据用户id 获取行数
	 * @param id 用户id
	 * @return 返回行数
	 */
	Long getcount(Integer id);

	/**
	 * 根据用户和查询条件返回行数
	 * @param id 用户id
	 * @param keyword 查询条件
	 * @param starttime 开始时间
	 * @param endtime 结束时间
	 * @return 查询的行数
	 */
	Long count(@Param("id")Integer id, @Param("keyword")String keyword,@Param("strarttime")Date starttime, @Param("endtime")Date endtime);


	/**
	 *  根据用户id查询对应的数据
	 * @param id 用户id
	 * @param keyword 查询条件
	 * @param start 开始页码
	 * @param length 页大小
	 * @param starttime 开始时间
	 * @param endtime 结束时间
	 * @return 返回相对应的数据
	 */
	List<Log> list(@Param("id")Integer id, @Param("keyword")String keyword,@Param("starttime")Date starttime, @Param("endtime")Date endtime);


	/**
	 *  根据用户id查询分页数据
	 * @param start 开始页码
	 * @return 返回相对应的数据
	 */
	List<Log> getlist(@Param("id")Integer id);

	/**
	 * 根据条件查询所有行数
	 * @param keyword 查询条件
	 * @param starttime 开始时间
	 * @param endtime 结束时间
	 * @return 总行数
	 */
	Long countAll(@Param("keyword") String keyword,@Param("starttime")Date starttime, @Param("endtime")Date endtime);


	/**
	 * 查询所有的日志记录
	 * @param keyword 查询条件
	 * @param starttime 开始时间
	 * @param endtime 结束时间
	 * @return 返回分页的所有数据
	 */
	List<Log> listAll(@Param("keyword")String keyword, @Param("starttime")Date starttime, @Param("endtime")Date endtime);

	/**
	 * 查询所有分页数据
	 * @return 返回所有分页数据
	 */
	List<Log> getlistAll();

}
