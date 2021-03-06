<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../includes/header.jsp" %>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Tables</h1>
<div class="card shadow mb-4">
	<div class="card-header py-3">
    	<h6 class="m-0 font-weight-bold text-primary">Board List Page</h6>
    </div>
    <div class="card-body">
    	<div class="table-responsive">
        	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            	<thead>
                	<tr>
                    	<th>#번호</th>
                    	<th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th>수정일</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${ board }" var="board">
                		<tr>
                			<td>${ board.bno }</td>
                			<td>${ board.title }</td>
                			<td>${ board.writer }</td>
                			<td>${ board.regdate }</td>
                			<td>${ board.updatedate }</td>
                		</tr>
                	</c:forEach>
                </tbody>
			</table>
		</div>
	</div>
</div>

<%@ include file="../includes/footer.jsp" %>