package cn.bole.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.bole.pojo.Job;

public interface JobMapper {

	List<Job> findJob(@Param("city")String city,@Param("industryId") String industryId, @Param("professionId")String professionId);

	List<Job> findNewJob();

	List<Job> findHotJob();

	List<Job> findJobByName(String jobName);

	Job findJobByJobId(String jobId);

}
