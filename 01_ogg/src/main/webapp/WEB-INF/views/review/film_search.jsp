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
    <div class="container" style="margin-bottom: 100px; margin-top: 40px;">

        <div class="row">
            <div class="col" style="margin-left: 5%;">
                <p class="row_name">검색 결과 </p>
            </div>
            <div class="col">
            </div>
            <div class="col">
                <input type="text" style="margin-left: 35%; margin-top:5px; 
                        height: 34px; width:140px; border: 1px solid lightgray">
                <button class="btn btn-primary" type="button" style="display: inline; height: 35px; margin-bottom: 5px;">검색</button>
            </div>
            <hr>
        </div>
        
        <!-- 1st row -->
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-5" id="carousel01">
            <div class="col">
                <div class="card" id="card_film">
                    <img src="${path}/images/review/poster.jpeg" id="img_film">
                    <div class="card-body">
                        <div id="card-text1">헌트</div>
                        <div id="card-text2">2022 ・ 한국</div>
                        <div id="card-text3">예매율 19% ・ 누적 관객 321만명</div>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card" id="card_film">
                    <img id="img_film">
                    <div class="card-body">
                        <div id="card-text1">육사오(6/45)</div>
                        <div id="card-text2">2021 ・ 한국</div>
                        <div id="card-text3">예매율 18% ・ 누적 관객 1만명</div>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card" id="card_film">
                    <img id="img_film">
                    <div class="card-body">
                        <div id="card-text1">불릿 트레인</div>
                        <div id="card-text2">2022 ・ 미국</div>
                        <div id="card-text3">예매율 14% ・ 누적 관객 1만명</div>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card" id="card_film">
                    <img id="img_film">
                    <div class="card-body">
                        <div id="card-text1">탑건: 매버릭</div>
                        <div id="card-text2">2022 ・ 미국</div>
                        <div id="card-text3">예매율 12% ・ 누적 관객 789만명</div>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card" id="card_film">
                    <img id="img_film">
                    <div class="card-body">
                        <div id="card-text1">한산: 용의 출현</div>
                        <div id="card-text2">2022 ・ 한국</div>
                        <div id="card-text3">예매율 7.4% ・ 누적 관객 679만명</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 1st row 끝 -->
        
        <br>

        <!-- 2nd row -->
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-5" id="carousel01">
            <div class="col">
                <div class="card" id="card_film">
                    <img src="${path}/images/review/poster.jpeg" id="img_film">
                    <div class="card-body">
                        <div id="card-text1">헌트</div>
                        <div id="card-text2">2022 ・ 한국</div>
                        <div id="card-text3">예매율 19% ・ 누적 관객 321만명</div>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card" id="card_film">
                    <img id="img_film">
                    <div class="card-body">
                        <div id="card-text1">육사오(6/45)</div>
                        <div id="card-text2">2021 ・ 한국</div>
                        <div id="card-text3">예매율 18% ・ 누적 관객 1만명</div>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card" id="card_film">
                    <img id="img_film">
                    <div class="card-body">
                        <div id="card-text1">불릿 트레인</div>
                        <div id="card-text2">2022 ・ 미국</div>
                        <div id="card-text3">예매율 14% ・ 누적 관객 1만명</div>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card" id="card_film">
                    <img id="img_film">
                    <div class="card-body">
                        <div id="card-text1">탑건: 매버릭</div>
                        <div id="card-text2">2022 ・ 미국</div>
                        <div id="card-text3">예매율 12% ・ 누적 관객 789만명</div>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card" id="card_film">
                    <img id="img_film">
                    <div class="card-body">
                        <div id="card-text1">한산: 용의 출현</div>
                        <div id="card-text2">2022 ・ 한국</div>
                        <div id="card-text3">예매율 7.4% ・ 누적 관객 679만명</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 2nd row 끝 -->
    </div>
    <!-- row end -->

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