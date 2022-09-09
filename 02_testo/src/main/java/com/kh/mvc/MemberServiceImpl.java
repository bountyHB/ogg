package com.kh.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired 
	private MemberMapper mapper;
	
	@Override
	public int memberCount() {

		return mapper.selectCount();
	}

}
