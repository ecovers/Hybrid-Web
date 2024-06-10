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

public class MakepdtDTO {

	private int make_pdt_id;
	private String make_pdt_factory_name;
	private String make_pdt_line_num;
	private String make_pdt_start_date;
	private String make_pdt_end_date;
	private String make_pdt_member;
	private String make_pdt_name;
	private String make_pdt_note;

}
