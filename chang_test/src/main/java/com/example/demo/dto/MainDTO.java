package com.example.demo.dto;

// 사용하는 데이터를 정의하는 페이지. 주로 DB의 모양에 맞게 작성한다.

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString

public class MainDTO {

	private int AI_id;
	private String AI_pdt_name;
	private String AI_pdt_size;
	private String AI_factory_name;
	private String AI_line_num;
	private String AI_date;
	
}
