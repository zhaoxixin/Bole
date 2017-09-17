package cn.bole.service;

import java.util.Date;
import java.util.List;

import cn.bole.pojo.Industry;
import cn.bole.pojo.Job;

public interface JobService {

	List<Job> findJob(String city, String industryId, String professionId);

	List<Job> findNewJob();

	List<Job> findHotJob();

	List<Job> findJobByName(String jobName);

	Job findJobByJobId(String jobId);

	void sendResume(String userId, String jobId, String companyId);

	List<Job> findJobByCompanyId(Integer companyId);

	void saveJob(Job job);



	List<Job> additionSearch(Job job, List<Job> jobListPre, Date announceTimePre, Date announceTimeAft);





}
