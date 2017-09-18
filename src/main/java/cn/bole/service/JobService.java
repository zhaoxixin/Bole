package cn.bole.service;

import java.util.List;

import cn.bole.pojo.Industry;
import cn.bole.pojo.Job;

public interface JobService {

	List<Job> findJob(String city, String industryId, String professionId);

	List<Job> findNewJob();

	List<Job> findHotJob();

	List<Job> findJobByName(String jobName);

	Job findJobByJobId(String jobId);





}
