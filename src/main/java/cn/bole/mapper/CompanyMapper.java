package cn.bole.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bole.pojo.Company;

public interface CompanyMapper {

	List<Company> findCompanyAll();

	Company findCompanyById(String companyInfoId);

	Company findCompanyEmailAndPassword(@Param("email")String email, @Param("password")String password);

}
