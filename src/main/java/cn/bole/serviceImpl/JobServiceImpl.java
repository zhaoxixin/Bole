package cn.bole.serviceImpl;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bole.mapper.JobInfoMapper;
import cn.bole.mapper.JobMapper;
import cn.bole.pojo.Job;
import cn.bole.pojo.JobInfo;
import cn.bole.service.JobService;

@Service
public class JobServiceImpl implements JobService {
	@Autowired
	private JobMapper jobMapper;
	@Autowired
	private JobInfoMapper jobInfoMapper;
	@Override
	public List<Job> findJob(String city, String industryId, String professionId) {
		
		return jobMapper.findJob(city,industryId,professionId);
	}
	@Override
	public List<Job> findNewJob() {
		return jobMapper.findNewJob();
	}
	@Override
	public List<Job> findHotJob() {
		return jobMapper.findHotJob();
	}
	@Override
	public List<Job> findJobByName(String jobName) {
		return jobMapper.findJobByName(jobName);
	}
	@Override
	public Job findJobByJobId(String jobId) {
		return jobMapper.findJobByJobId(jobId);
	}
	
	@Override
	public List<Job> findJobByCompanyId(Integer companyId) {
		
		return jobMapper.findJobByCompanyId(companyId);
	}
	@Override
	public void saveJob(Job job) {
		JobInfo jobinfo = job.getJobInfo();
		//补齐属性值
		String jobId = UUID.randomUUID().toString();
		job.setJobId(jobId);
		job.setAnnounceTime(new Date());
		jobinfo.setJobInfoId(jobId);
		jobMapper.saveJob(job);	
		jobInfoMapper.saveJobInfo(jobinfo);

	}
	/**
	 * list.jsp中根据输入的条件在之前查询的基础上进行查询
	 * @param model
	 * @param job
	 * @param jobListPre
	 * @param announceTimePre
	 * @param announceTimeAft
	 * @return
	 */
	@Override
	public List<Job> additionSearch(Integer salaryRange, String highistEducation, String jobNature, String[] jobIds,
			Date announceTimePre, Date announceTimeAft) {
		List<Job> jobList = new ArrayList<Job> ();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String announceTimePre2 = sdf.format(announceTimePre);
		String announceTimeAft2 = sdf.format(announceTimeAft);
		for (String jobId : jobIds) {
			Job job = jobMapper.additionSearch(salaryRange, highistEducation, jobNature, jobId,announceTimePre2,announceTimeAft2);
			jobList.add(job);
		}
		return jobList;
	
	}
	@Override
	public void sendResume(String jobId, Integer companyId, String resumId) {
		jobMapper.sendResume(jobId,companyId,resumId);
	}
	
	
	

}
