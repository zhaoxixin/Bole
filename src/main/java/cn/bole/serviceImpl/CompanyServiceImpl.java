package cn.bole.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bole.mapper.CompanyMapper;
import cn.bole.pojo.Company;
import cn.bole.pojo.Resum;
import cn.bole.pojo.User;
import cn.bole.service.CompanyService;
@Service
public class CompanyServiceImpl implements CompanyService {
    @Autowired
	private CompanyMapper companyMapper;

	@Override
	public List<Company> findCompanyAll() {
		
		return companyMapper.findCompanyAll();
	}

	@Override
	public Company findCompanyById(Integer companyId) {

		return companyMapper.findCompanyById(companyId);
	}

	@Override
	public Company findCompanyEmailAndPassword(String email, String password) {
		return companyMapper.findCompanyEmailAndPassword(email,password);
		
		
	}

	@Override
	public List<Resum> findUserBycomId(Integer companyId) {
	
		return companyMapper.findUserBycomId(companyId);
	}

	
	
	
	

}
