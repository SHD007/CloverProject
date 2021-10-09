<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>QR 목록</title>
<!-- 스타일, js 라이브러리 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/CSS/styleList.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/bb29575d31.js"></script>
<script>
	$(function() {
		$('.head3').click(function() {
			$('.head2').slideToggle();
		})
	})
</script>
</head>
<body>
	<!--header-->
	<header>
		<div class="container">
			<div class="head1">
				<a onclick="location.href='../../../../main'"><i
					class="fas fa-home"></i></a> <span class="head3"><i
					class="far fa-caret-square-down"></i></span>
			</div>
			<nav class="head2">
				<ul>
					<li><a onclick="location.href='../../../../about'">CLVOER</a></li>
					<li><a onclick="location.href='../qr/write'">MY QR</a></li>
					<li><a onclick="location.href='../order'">ORDER</a></li>
					<li><a onclick="location.href='../board/list'">FIND &
							FOUND</a></li>
					<li><a onclick="location.href='../../../../login'">JOIN</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<section class="container1">
		<div href class="container">
			<h2>QR 목록</h2>
			<%-- 글 목록 --%>
			<div id="list" style="width:1000px">
				<%-- header 헤더 --%>
				<div class="d01">
					<div class="left" id="pageinfo"></div>
					<div class="right" id="pageRows"></div>
				</div>
				<div class="clear"></div>

				<br>
				<%-- 목록 --%>
				<div id="container1_table">
					<table>
						<thead>
							<th>uid</th>
							<th>보호자이름</th>
							<th>주문</th>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty list || fn:length(list) == 0 }">
								</c:when>
								<c:otherwise>
									<c:forEach var="dto" items="${list }">
										<tr>
											<td>${dto.uid }</td>
											<td>${dto.name }</td>
											<td>
												<button onclick="location.href='../order?uid=${dto.uid}'"  class="blue_button1">주문하기</button>
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
				<br> <br>
				<%-- bottom 버튼 --%>
				<div class="d01">
					<div class="left">
						<button type="button" id="btnDel" class="btn danger" style="border-radius: 10px;">글삭제</button>
					</div>
					<div class="right">
						<button id="btnWrite" class="btn success" style="border-radius: 10px;"
							onclick="location.href = 'write'">신규등록</button>
					</div>
				</div>

			</div>
			<div class="clear"></div>

			<%-- [페이징] --%>
			<div class="center">
				<ul class="pagination" id="pagination"></ul>
			</div>

		</div>
	</section>
	<!--footer-->
	<footer>
		<div class="container">
			<div class="foot1">
				<h2>CLVOER</h2>
				<p>
					Web Address : <a
						href="https://katieyoon-the-developer.tistory.com/">https://katieyoon-the-developer.tistory.com/</a>
				</p>
			</div>
			<div class="foot2"></div>
			<nav class="foot3">
				<div>
					<h3>HELP</h3>
					<ul>
						<li><a href="#">Administrator</a></li>
						<li><a href="#">Frequently Asked Question(s)</a></li>
						<li><a href="#">Direct Calls</a></li>
					</ul>
				</div>

			</nav>
		</div>
	</footer>

</body>
</html>