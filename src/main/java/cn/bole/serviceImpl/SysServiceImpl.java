package cn.bole.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bole.mapper.SysMapper;
import cn.bole.pojo.Job;
import cn.bole.service.SysService;
@Service 
public class SysServiceImpl implements SysService {
	
	@Autowired SysMapper sysMapper;

	@Override
	public List<Job> findAllJob() {
		
		return sysMapper.findAllJob();
	}

	@Override
	public void setState(String[] ids, Integer state) {
		for (String id : ids) {
			
			sysMapper.setState(id,state);
		}
		
	}
}
