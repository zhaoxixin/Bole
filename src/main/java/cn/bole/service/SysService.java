package cn.bole.service;

import java.util.List;

import cn.bole.pojo.Job;

public interface SysService {

	List<Job> findAllJob();

	void setState(String[] ids, Integer state);

}
