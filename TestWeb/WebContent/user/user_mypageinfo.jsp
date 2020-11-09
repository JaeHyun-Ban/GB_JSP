<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../include/header.jsp"%>


<section>
	<div class="container">
		<div class="row join-wrap">
			<!--join-form을 적용한다 float해제 margin:0 auto-->
			<div class="col-xs-12 col-md-9 join-form">

				<div class="titlebox">MEMBER INFO</div>

				<p>*표시는 필수 입력 표시입니다</p>
				<table class="table">
					<tbody class="m-control">
						<tr>
							<td class="m-title">*ID</td>
							<td><input class="form-control input-sm" name="id" value="${sessionScope.login.id }" readonly></td>
						</tr>
						<tr>
							<td class="m-title">*이름</td>
							<td><input class="form-control input-sm" name="name" value="${sessionScope.login.name }"></td>
						</tr>
						<tr>
							<td class="m-title">*비밀번호</td>
							<td><input class="form-control input-sm" name="password"></td>
						</tr>
						<tr>
							<td class="m-title">*비밀번호확인</td>
							<td><input class="form-control input-sm" name="pwcheck"></td>
						</tr>
						<tr>
							<td class="m-title">*E-mail</td>
							<td><input class="form-control input-sm" name="email" value="${sessionScope.login.email }">@ <select
								class="form-control input-sm sel">
									<option>naver.com</option>
									<option>gmail.com</option>
									<option>daum.net</option>
							</select>
								<button class="btn btn-info">중복확인</button></td>
						</tr>
						<tr>
							<td class="m-title">*휴대폰</td>
							<td>
								<input class="form-control input-sm sel" name="phone1" value="${sessionScope.login.phone1 }"> - 
								<input class="form-control input-sm sel" name="phone2" value="${sessionScope.login.phone2 }"> - 
								<input class="form-control input-sm sel" name="phone3" value="${sessionScope.login.phone3 }">
							</td>
						</tr>
						<tr>
							<td class="m-title">*주소</td>
							<td>
								<input class="form-control input-sm add" value="${sessionScope.login.addr_basic }">
							</td>
						</tr>
						<tr>
							<td class="m-title">*상세주소</td>
							<td>
								<input class="form-control input-sm add" value="${sessionScope.login.addr_detail }">
							</td>
						</tr>
					</tbody>
				</table>

				<div class="titlefoot">
					<button class="btn" onclick="location.href='mypage.user'">수정</button>
					<button class="btn" onclick="">목록</button>
				</div>

			</div>


		</div>

	</div>

</section>


<%@ include file="../include/footer.jsp"%>