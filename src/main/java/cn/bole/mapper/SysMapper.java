package cn.bole.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.bole.pojo.Job;

public interface SysMapper {

	List<Job> findAllJob();
	
	@Update("update job set state=#{state} where job_id=#{id}")
	void setState(@Param("id")String id, @Param("state")Integer state);
	int findJobNumBj();
	int findJobNumSh();
	int findJobNumGz();
	int findJobNumSz();
	int findJobNumSzou();
	int findJobNumHz();

	double AvgSalaryBj();
	double AvgSalarySh();
	double AvgSalaryGz();
	double AvgSalarySz();
	double AvgSalarySzou();
	double AvgSalaryHz();
	

}
