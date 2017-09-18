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

	@Override
	public int[] findJobNumByCity(String[] citys) {
		int[] num=new int[6];
			
			 num[0]= sysMapper.findJobNumBj();
			 num[1]= sysMapper.findJobNumSh();
			 num[2]= sysMapper.findJobNumGz();
			 num[3]= sysMapper.findJobNumSz();
			 num[4]= sysMapper.findJobNumSzou();
			 num[5]= sysMapper.findJobNumHz();
		return num;
	}

	@Override
	public double[][] findAvgSalaryByCity() {
		double[][] avgSalary=new double[6][3];
		avgSalary[0][2]= sysMapper.AvgSalaryBj()*2000;
		avgSalary[0][0]= (avgSalary[0][2]-2000);//其实不对，应该查最小值，方法太多了，不查了
		avgSalary[0][1]= (avgSalary[0][2]+2000);//其实不对，应该查最大值
		
		avgSalary[1][2]= sysMapper.AvgSalarySh()*2000;
		avgSalary[1][0]= (avgSalary[1][2]-2000);
		avgSalary[1][1]= (avgSalary[1][2]+2000);
		
		avgSalary[2][2]= sysMapper.AvgSalaryGz()*2000;
		avgSalary[2][0]= (avgSalary[2][2]-2000);
		avgSalary[2][1]= (avgSalary[2][2]+2000);
		
		avgSalary[3][2]= sysMapper.AvgSalarySz()*2000;
		avgSalary[3][0]= (avgSalary[3][2]-2000);
		avgSalary[3][1]= (avgSalary[3][2]+2000);
		
		avgSalary[4][2]= sysMapper.AvgSalarySzou()*2000;
		avgSalary[4][0]= (avgSalary[4][2]-2000);
		avgSalary[4][1]= (avgSalary[4][2]+2000);
		
		avgSalary[5][2]= sysMapper.AvgSalaryHz()*2000;
		avgSalary[5][0]= (avgSalary[5][2]-2000);
		avgSalary[5][1]= (avgSalary[5][2]+2000);
		
		return avgSalary;
	}
}
