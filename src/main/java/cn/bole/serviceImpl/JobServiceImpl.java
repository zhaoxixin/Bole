package cn.bole.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bole.mapper.JobMapper;
import cn.bole.pojo.Job;
import cn.bole.service.JobService;
@Service
public class JobServiceImpl implements JobService {
	@Autowired
	private JobMapper jobMapper;
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
	public Job saveJob(Integer jobId) {
		
		return jobMapper.saveJob(jobId);
	}
	

}
