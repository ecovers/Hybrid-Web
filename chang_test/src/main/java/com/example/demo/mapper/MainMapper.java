package com.example.demo.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.example.demo.dto.MainDTO;
import com.example.demo.dto.MemberDTO;


@Component
@Mapper

public interface MainMapper {

	@Select("SELECT * FROM ai_quantity_check order by AI_did desc limit 10")
	List<MainDTO> AIdata();
	
	@Select("SELECT * FROM login_info limit 10")
	List<MemberDTO> Member();

	
}
