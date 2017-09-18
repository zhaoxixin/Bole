package cn.bole.service;

import java.util.List;

import cn.bole.pojo.Job;

public interface SysService {

	List<Job> findAllJob();

	void setState(String[] ids, Integer state);
	//查询某个城市的职位数量
	int[] findJobNumByCity(String[] citys);

	double[][] findAvgSalaryByCity();
	

}
