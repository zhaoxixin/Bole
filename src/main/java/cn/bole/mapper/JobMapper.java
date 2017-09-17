package cn.bole.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.bole.pojo.Job;
import cn.bole.pojo.JobInfo;

public interface JobMapper {

	List<Job> findJob(@Param("city")String city,@Param("industryId") String industryId, @Param("professionId")String professionId);

	List<Job> findNewJob();

	List<Job> findHotJob();

	List<Job> findJobByName(String jobName);

	Job findJobByJobId(String jobId);
	@Insert("insert into com_user (job_id,company_id,resum_id) values(#{userId},#{jobId},#{companyId})")
	void sendResume(@Param("userId")String userId, @Param("jobId")String jobId, @Param("companyId")String companyId);

	List<Job> findJobByCompanyId(Integer companyId);

	void saveJob(Job job);

	void saveJob(JobInfo jobinfo);

}
