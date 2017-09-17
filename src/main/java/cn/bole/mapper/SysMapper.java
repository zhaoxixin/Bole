package cn.bole.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import cn.bole.pojo.Job;

public interface SysMapper {

	List<Job> findAllJob();
	@Update("update job set state=#{state} where job_id=#{id}")
	void setState(@Param("id")String id, @Param("state")Integer state);
	

}
