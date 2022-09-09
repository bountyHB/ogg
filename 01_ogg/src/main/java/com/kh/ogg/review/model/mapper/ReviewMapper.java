package com.kh.ogg.review.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.ogg.review.model.vo.Review;

@Mapper
public interface ReviewMapper {

	Review selectAll();

	Review findReviewByNo(int no);

	int selectBoardCount();

	List<Review> selectAll(RowBounds rowBounds);
}
