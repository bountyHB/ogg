package com.kh.ogg.review.model.service;

import java.util.List;

import com.kh.ogg.common.util.PageInfo;
import com.kh.ogg.review.model.vo.Review;


public interface ReviewService {

	int getBoardCount();

	List<Review> getBoardList(PageInfo pageInfo);

	Review selectAll();

	Review findReviewByNo(int no);



}
