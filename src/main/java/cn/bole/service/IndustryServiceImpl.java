package cn.bole.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bole.mapper.IndustryMapper;
import cn.bole.pojo.Industry;
import cn.bole.service.IndustryService;
@Service
public class IndustryServiceImpl implements IndustryService {
	@Autowired
	private IndustryMapper industryMapper;
	@Override
	public List<Industry> findAllIndustry() {
		return industryMapper.findAllIndustry();
	}

}
