package cn.bole.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bole.pojo.Company;
import cn.bole.pojo.Resum;
import cn.bole.pojo.User;

public interface CompanyMapper {

	List<Company> findCompanyAll();

	Company findCompanyById(Integer companyId);

	Company findCompanyEmailAndPassword(@Param("email")String email, @Param("password")String password);

	List<Resum> findUserBycomId(Integer companyId);



}
