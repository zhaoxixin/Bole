package cn.bole.serviceImpl;

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
	public void sendResume(String userId, String jobId, String companyId) {
		jobMapper.sendResume(userId,jobId,companyId);
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
		jobMapper.saveJob(job);	
		jobInfoMapper.saveJobInfo(jobinfo);
	}
	
	

}
