<%@page import="com.sj.vo.CustomerQna"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	out.println("aaa: " + request.getContextPath() + "<br/>");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<link href="<c:url value="/resources/bootstrap/css/bootstrap.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/bootstrap/css/bootstrap-responsive.css"/>" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="<c:url value="/resources/bootstrap/js/bootstrap.js" />"></script>
<title>TEST</title>
<style type="text/css">
	.table th, .table td{ text-align: center; vertical-align: middle; }
	.table thead th{ vertical-align: middle; }
 	.btn-small{ padding-top: 2px; padding-bottom: 2px; margin-right: 5px; }
	.selectpicker{ margin-bottom:0px; }
	#table-sum td{ text-align:center; border:1px solid #dddddd; }
</style>
</head>
<body>


<div class="container">
	<div class="row">
  		
<!-- 메인 컨텐츠 시작 -->
		<div class="span12">
			<div class="page-header">
				<h2>문의게시판 관리</h2>
			</div>
			<div class="row-fluid">
				<form id="search_form" method="post" action="qnaList.jsp" class="form-search clearfix">
				<input type="hidden" name="exec" value="1">
				<input type="hidden" id="hpage" name="hpage" value="">
					<label class="radio" for="smartpanel">
						<input type="radio"	id="smartpanel" name="panelType" value="1" checked>스마트패널
					</label>
					<label class="radio" for="paneli">
						<input type="radio"	id="paneli" name="panelType" value="2" >패널아이
					</label>				
					<select id="srchCat" name="srchCat" class="selectpicker input-small">
						<option value="" selected>전체</option>
						<option value="1" >제목</option>
						<option value="2" >작성자</option>
						<option value="3" >작성일</option>
						<option value="4" >답변유무</option>
						<option value="5" >카테고리</option>
					</select>
					<input type="text" class="input-medium" id="srchVal" name="srchVal" placeholder="검색어" value="">
					<span id="span_reg_day">
						<input class="datepicker input-small" type="text" id="regDayFrom" name="regDayFrom" placeholder="From" value="">~
						<input class="datepicker input-small" type="text" id="regDayTo" name="regDayTo" placeholder="To" value="">
					</span> 
					<select id="answer" name="answer" class="selectpicker input-small">
						<option value="" selected>전체</option>
						<option value="0" >답변 전</option>
						<option value="1" >답변완료</option>
					</select>
					<select id="category" name="category" class="selectpicker input-small">
						<option value="" selected>전체</option>
						<option value="1" >조사 관련 문의</option>
						<option value="2" >적립금 관련 문의</option>
						<option value="3" >적립금 전환 문의</option>
					</select>
					<button class="btn btn-primary" id="btn-search" name="btn-search">검색</button>
					<span class="label label-info pull-right">
						<label>총  000건이 검색되었습니다. </label>
					</span>
				</form>
			</div>
			<div>
				<table id="users" class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>문의번호</th>
							<th class="td_hide">문의유형</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>답변</th>
						</tr>
					</thead>
					<tbody>
<%-- 						<c:forEach var="list" items="${qnaList }" varStatus="status"> --%>
<!-- 							<tr> -->
<%-- 								<td>${list.getCustomer_qna_id() }</td> --%>
<%-- 								<td>${list.getQna_category() }</td> --%>
<%-- 								<td>${list.getAsk_title() }</td> --%>
<%-- 								<td>${list.getMuserid() }</td> --%>
<%-- 								<td>${list.getReg_day() }</td> --%>
<%-- 								<td>${list.getState() }</td> --%>
<!-- 							</tr> -->
<%-- 						</c:forEach> --%>
						<c:forEach var="i" begin="0" end="10" step="1">
							<tr>
								<td>
									<c:choose>
										<c:when test="${(i % 2) == 1 }">짝수</c:when>
										<c:otherwise>홀수</c:otherwise>
									</c:choose>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			
			<!-- 페이지네이션 시작 -->
			<div class="pagination pagination-centered">
				<ul>
					
				</ul>
			</div>
			<!-- 페이지네이션 끝 -->
		</div><!-- /.span10 -->
		
	</div>
	<!-- 메인 컨텐츠 끝 -->	
	
</div><!-- /.container-fluid -->

</body>

</html>
  		