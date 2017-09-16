package cn.bole.service;

import java.util.List;

import cn.bole.pojo.Company;

public interface CompanyService {

	List<Company> findCompanyAll();

	Company findCompanyById(String companyInfoId);

	Company findCompanyEmailAndPassword(String email, String password);



}
