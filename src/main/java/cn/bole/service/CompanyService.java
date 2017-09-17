package cn.bole.service;

import java.util.List;

import cn.bole.pojo.Company;
import cn.bole.pojo.Resum;
import cn.bole.pojo.User;

public interface CompanyService {

	List<Company> findCompanyAll();

	Company findCompanyById(String companyInfoId);

	Company findCompanyEmailAndPassword(String email, String password);

	List<Resum> findUserBycomId(Integer companyId);





}
