package com.example.demo.mapper;


// DB 쿼리문을 적어놓는 페이지 각 쿼리문을 메소드처럼 지정하여 필요할때 불러올 수 있다.

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.example.demo.dto.MainDTO;
import com.example.demo.dto.MakelineDTO;
import com.example.demo.dto.MakepdtDTO;
import com.example.demo.dto.MemberDTO;


@Component
@Mapper

public interface MainMapper {
	
	
	
	@Select("SELECT * FROM ai_quantity_check order by AI_id desc limit 10")
	List<MainDTO> AIdata();
	
	@Select("SELECT * FROM login_info limit 10")
	List<MemberDTO> Member();

	@Select("SELECT * FROM live_total limit 10")
	List<MakelineDTO> Makeline();
	
	@Select("SELECT * FROM make_pdt")
	List<MakepdtDTO> Makepdt();
	
	@Select("SELECT COUNT(DISTINCT make_pdt_line_num) FROM make_pdt;")
	int lineNum();
	
	
}
