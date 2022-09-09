package com.kh.mvc;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	
	int selectCount();
}
