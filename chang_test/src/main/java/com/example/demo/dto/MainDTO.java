package com.example.demo.dto;



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
