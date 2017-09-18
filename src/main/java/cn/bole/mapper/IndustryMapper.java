package cn.bole.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bole.pojo.Industry;

public interface IndustryMapper {

	public List<Industry> findAllIndustry();



}
