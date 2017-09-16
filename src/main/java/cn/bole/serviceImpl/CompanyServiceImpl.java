package cn.bole.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bole.mapper.CompanyMapper;
import cn.bole.pojo.Company;
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
	public Company findCompanyById(String companyInfoId) {

		return companyMapper.findCompanyById(companyInfoId);
	}

	@Override
	public Company findCompanyEmailAndPassword(String email, String password) {
		return companyMapper.findCompanyEmailAndPassword(email,password);
		
		
	}

	
	
	

}
