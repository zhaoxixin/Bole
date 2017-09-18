package cn.bole.mapper;

import java.util.Date;
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
	@Insert("insert into com_user (company_id,resum_id,resum_id) values(#{jobId},#{companyId},#{resumId})")
	void sendResume(@Param("jobId")String jobId, @Param("companyId")String companyId,@Param("resumId")String resumId);

	List<Job> findJobByCompanyId(Integer companyId);

	void saveJob(Job job);

	List<Job> additionSearch(@Param("job")Job job, @Param("jobIds")String[] jobIds,  @Param("announceTimePre")Date announceTimePre, @Param("announceTimeAft")Date announceTimeAft);

	Job additionSearch(@Param("salaryRange")Integer salaryRange, @Param("highistEducation")String highistEducation,
			@Param("jobNature")String jobNature, @Param("jobId")String jobId,
			@Param("announceTimePre2")String announceTimePre2, @Param("announceTimeAft2") String announceTimeAft2);



}
