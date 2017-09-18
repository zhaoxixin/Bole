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

	

	List<Job> findJobByCompanyId(Integer companyId);

	void saveJob(Job job);

	List<Job> additionSearch(Integer salaryRange, String highistEducation, String jobNature, String[] jobIds,
			Date announceTimePre, Date announceTimeAft);



	void sendResume(String jobId, String companyId, String resumId);

	


	





}
