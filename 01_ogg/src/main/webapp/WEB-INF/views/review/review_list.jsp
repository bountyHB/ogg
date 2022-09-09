<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

	<!-- header -->
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
    <!-- my CSS -->
    <link rel="stylesheet" href="${path}/css/review/ogg_review.css">

    <!-- 내용 전체 컨테이너 -->
    <br><br><br><br><br>
    <div class="container" style="margin-bottom: 100px; padding-left: 60px; padding-right: 60px;">
    
		<!-- 1st row -->
		<jsp:include page="/WEB-INF/views/review/film_header.jsp"/>
        
        <!-- 2nd row -->
        <div class="col-3 col-sm-12" id="div_review" >
            <p class="detail-text1" style="margin-left: 10px;">코멘트</p><hr>

            <!-- 리뷰 내용 -->
			<jsp:include page="/WEB-INF/views/review/review_box.jsp"/>
            <!-- 리뷰 내용 끝-->

            <!-- 리뷰 내용 -->
			<jsp:include page="/WEB-INF/views/review/review_box.jsp"/>
            <!-- 리뷰 내용 끝-->

            <!-- 리뷰 내용 -->
			<jsp:include page="/WEB-INF/views/review/review_box.jsp"/>
            <!-- 리뷰 내용 끝-->

            <!-- 리뷰 내용 -->
			<jsp:include page="/WEB-INF/views/review/review_box.jsp"/>
            <!-- 리뷰 내용 끝-->
            
        </div>
        <!-- 2nd row 끝 -->

    <br>
    <!-- 페이징 -->
    <div class="row">
        <div class="col-4"></div>
        <div class="col-4">
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-4"></div>
    </div>
    <!-- 페이징 끝 -->

    </div>
    <!-- 내용 전체 컨테이너 끝 -->

    <!-- footer -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>