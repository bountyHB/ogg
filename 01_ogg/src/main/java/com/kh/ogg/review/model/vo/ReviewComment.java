package com.kh.ogg.review.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewComment {
	
	private int rvCmtNo;
	private int rvNo;
	private int rvCmtWriterNo;
	private Date rvCmtDate;
	private Date rvCmtUpDate;
	private String rvCmtContent;
	private String rvCmtStatus;
	private int rvCmtLikes;
	private int rvCmtGroup;
	private int rvCmtDepth;
}
