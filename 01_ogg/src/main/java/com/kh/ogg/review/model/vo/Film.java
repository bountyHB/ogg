package com.kh.ogg.review.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Film {

	private String fCode;
	private Date fDate;
	private String fDir;
	private String fTitle;
	private String fContent;
	private String fGenre;
	private String fNat;
	private int fStarred;
	private String fDib;
}
