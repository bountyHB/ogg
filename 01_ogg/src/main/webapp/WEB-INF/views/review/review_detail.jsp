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
        <div class="col-3 col-sm-12" id="div_review">
            <!-- 리뷰 내용 -->
			<jsp:include page="/WEB-INF/views/review/review_box.jsp"/>
            <!-- 리뷰 내용 끝-->
            
            <!-- 댓글 테이블 -->
            <div id="div_review">
            <table class="table table-hover" id="review_reply">
                <tbody >
                    <tr>
                        <td id="board-text4">작성자1</td>
                        <td id="board-text5">댓글 내용 1..</td>
                        <td id="board-text7">
                            <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                                <button class="btn btn-primary" type="button">수정</button>
                                <button class="btn btn-primary" type="button">삭제</button>
                            </div>    
                        </td>
                    </tr>
                    <tr>
                        <td id="board-text4" >작성자2</td>
                        <td id="board-text5">댓글 내용 2..</td>
                        <td id="board-text7">
                            <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                                <button class="btn btn-primary" type="button">수정</button>
                                <button class="btn btn-primary" type="button">삭제</button>
                            </div>    
                        </td>
                    </tr>
                    <tr>
                        <td id="board-text4">작성자3</td>
                        <td id="board-text5">댓글 내용 3..</td>
                        <td id="board-text7">
                            <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                                <button class="btn btn-primary" type="button">수정</button>
                                <button class="btn btn-primary" type="button">삭제</button>
                            </div>    
                        </td>
                    </tr>
                    <tr>
                        <td id="board-text4">작성자4</td>
                        <td id="board-text5">댓글 내용 4..</td>
                        <td id="board-text7">
                            <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                                <button class="btn btn-primary" type="button">수정</button>
                                <button class="btn btn-primary" type="button">삭제</button>
                            </div>    
                        </td>
                    </tr>
                    <tr>
                        <td id="board-text4">작성자5</td>
                        <td id="board-text5">댓글 내용 5..</td>
                        <td id="board-text7">
                            <fieldset>

                                <!-- <div class="btn-group" role="group" aria-label="Basic mixed styles example"> -->
                                    <div class="btn-group" role="group" aria-label="First group">
                                        <button class="btn btn-primary" type="button">수정</button>
                                        <button class="btn btn-primary" type="button">삭제</button>
                                        </div>    
                            </fieldset>
                        </td>
                    </tr>
                </tbody>
            </table>
            <!-- 리뷰 작성 컨테이너 -->
            <div id="comment-editor" class="mb-3">
                <div class="form-control" style="height: 85px;">
                    <p id="loginId" style="font-weight: bold; margin: 0px;"></p>
                    <textarea style="border: none; resize: none; width: 100%;"></textarea>
                </div>
                <div class="text-right mt-1">
                    <button class="btn btn-primary" type="button" 
                    style="margin-left:45%; height: 35px;">등록</button>
                </div>
            </div>
        </div>
        </div>
        <!-- 2nd row 끝 -->

    </div>
    <!-- 내용 전체 컨테이너 끝 -->    
    
    
    
    
    
    
    

	<!-- footer -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>