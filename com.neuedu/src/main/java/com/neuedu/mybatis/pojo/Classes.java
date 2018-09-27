package com.neuedu.mybatis.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Classes {

	
	private Integer cid;
	private String cname;
	private Teacher teacher;
}
