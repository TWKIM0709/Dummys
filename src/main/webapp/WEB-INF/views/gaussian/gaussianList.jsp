<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/include/head.jsp" />
<style type="text/css">
	#check{
		width: 100px
	}
	table {
		text-align: center;
	}
	#values{
		border: 3px solid;
		min-height: 525px;
		border-radius: 10px;
	}
</style>
</head>
<body>
	<div id="right-panel" class="right-panel">
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />
		<div id="main_content">
			<div class="row">
				<div class="col">
					<div class="row">
						<h1>나만의 정규분포 규칙 생성</h1>
					</div>
					<br>
					<div class="row">
						<div>
							<p>원하는 페이지를 만들어 보아요! 무조건 txt파일로 올리세요</p>
							<p>불편하면 자세를 고쳐앉아</p>
						</div>
					</div>
					<div class="row">
						<button class="btn btn-outline-secondary newbtn" id="createBtn">정규분포 만들기</button>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table class="table table-hover table-striped">
						<thead class="table-light">
							<tr>
								<th id="check">체크박스</th>
								<th>이름</th>
								<th>적용 컬럼</th>
							</tr>
						</thead>
						<tbody>
							
							<c:forEach items="${list }" var="data">
								<tr>
									<td><input type="checkbox" value="${data.gaussian_no }"/></td>
									<td>${data.gaussian_name }</td>
									<td>${data.gaussian_col }</td>
								</tr>
							</c:forEach>
<!-- 							<tr>
								<td><input type="checkbox"/></td>
								<td>멀봐</td>
								<td>남들이 보는게 부끄러워요</td>
							</tr>
							<tr>
								<td><input type="checkbox"/></td>
								<td>안녕</td>
								<td>싫어!!!</td>
							</tr> -->
						</tbody>
						<tfoot>
							<tr>
								<td></td>
								<td></td>
								<td><button class="btn tablebtn btn-outline-secondary" id="delBtn">삭제</button></td>
							</tr>
						</tfoot>
					</table>
				</div>

			</div>
		</div>
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	</div>
</body>
<script>
	$('#createBtn').on({
		click : ()=>{
			location.href = "/gaussian/gaussianCreate.do"
		}
	})
	$('#delBtn').on({
		click : deleteGaussian
	})
	function deleteGaussian(){
		let list =[]; 
		list.push($('input[type=checkbox]:checked').map((index,data)=>$(data).val()));
		let listdata = [...list[0]];
		// console.log(listdata);
		
		// let datas = [];
		// datas.push($(listdata).map((index,data)=>{
		// 	return {"list" : data}
		// }));
		// console.log(datas);
		// console.log(datas[0]);
		
		$.ajax({
			"type" : "post",
			"url" : "deleteGaussian.do",
			"data" : JSON.stringify([...list[0]]),
			"contentType":"application/json",
			"success" : (data)=>{
				if(data.result == 'success'){
					alert('성공!');
					location.reload();
				} else if(data.result == 'fail'){
					alert('실패...');
				} else if(data.result == 'login-error'){
					alert('로그인 필요...');
					location.href = "/users/login.do";
				}
			},
			"error" : (error)=>{
				console.log(error)
			}
		})// $ajax end
	}
</script>
</html>