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

	private int id;
	private String d_name;
	private String location;
	private String size;
	private String ea;
	private String data_time;
	
}
