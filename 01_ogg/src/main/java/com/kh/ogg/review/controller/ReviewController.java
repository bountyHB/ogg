package com.kh.ogg.review.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ogg.common.util.PageInfo;
import com.kh.ogg.review.model.service.ReviewService;
import com.kh.ogg.review.model.vo.Review;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService service;
	
	@GetMapping("/review/film_list")
	public ModelAndView filmList(ModelAndView model) {
		
		model.setViewName("review/film_list");
		
		return model;
	}
	
	@GetMapping("/review/film_search")
	public ModelAndView filmSearch(ModelAndView model) {
		
		model.setViewName("review/film_search");
		
		return model;
	}
	
	@GetMapping("/review/film_detail")
	public ModelAndView filmDetail(ModelAndView model) {
		
		model.setViewName("review/film_detail");
		
		return model;
	}
	
	@GetMapping("/review/review_list")
	public ModelAndView reviewList(ModelAndView model,
		@RequestParam(value = "page", defaultValue = "1") int page) {

		List<Review> list = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getBoardCount(), 10);
		list = service.getBoardList(pageInfo);
		
		System.out.println(list);
		
		model.addObject("list", list); // 게시글 표시
		model.addObject("pageInfo", pageInfo);
		model.setViewName("review/review_list");
		
		return model;
	}
	
	@GetMapping("/review/review_detail")
	public ModelAndView reviewDetail(ModelAndView model, @RequestParam int no) {
		Review review = null;
		review = service.findReviewByNo(no);
		
		System.out.println(review);
		
		model.addObject("review", review);
		model.setViewName("review/review_detail");
		
		return model;
	}
	
}
