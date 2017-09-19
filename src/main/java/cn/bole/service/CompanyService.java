package cn.bole.service;

import java.util.List;

import cn.bole.pojo.Company;
import cn.bole.pojo.Resum;
import cn.bole.pojo.User;

public interface CompanyService {

	List<Company> findCompanyAll();

	Company findCompanyById(Integer companyId);

	Company findCompanyEmailAndPassword(String email, String password);

	List<Resum> findUserBycomId(Integer companyId);

	List<Resum> findResumByFeedback(Integer companyId);

	void updateResumByFeedback(String resumId,Integer feedback);

	List<Resum> findResumByFeedback2(Integer companyId);

	List<Resum> findResumByFeedback3(Integer companyId);





}
