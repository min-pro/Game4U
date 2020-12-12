<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!-- The Modal -->
<div class="modal" id="logInModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- Modal body -->
			<div class="modal-body" style="text-align: center;">
				<Button style="outline: none;" type="button" class="close" data-dismiss="modal">&times;</Button>
				<div style="min-height: 230px; padding: 20px 0px;">

					<img class="" id="logo" src="<%=request.getContextPath()%>/resources/img/logo.png" style="width: 30px; height: 30px">
					<h3 id="masonry" style="font-weight: bold; background: -webkit-linear-gradient(#eee, #6091ef); -webkit-background-clip: text; -webkit-text-fill-color: transparent;">Game4U</h3>


					<form action=""></form>

					<div style="padding: 5px;">
						<input type="email" " class=" form-control" id="email" name="email" placeholder=" 이메일" style="width: 280px; border-radius: 10px; margin: auto;">
					</div>

					<div id="login-email-error" style="font-size: 12px; width: 280px; height: 30px; margin: auto; display: none;">
						<a> <input type="text" class="form-control form-control-sm" name="text1" readonly
							style="border: 0; outline: 0; background: none; cursor: pointer; text-align: left; color: #e60023; font-size: 12px; padding: 0px;" value="입력하신 이메일 주소에 연결된 계정이 없습니다.">
						</a>
					</div>

					<div style="padding: 5px;">
						<input type="password" class="form-control" id="password" name="password" placeholder=" 비밀번호" style="width: 280px; border-radius: 10px; margin: auto;">
					</div>

					<div id="login-password-error" style="font-size: 12px; width: 280px; height: 30px; margin: auto; display: none;">
						<a> <input type="text" class="form-control form-control-sm" name="text1" readonly
							style="border: 0; outline: 0; background: none; cursor: pointer; text-align: left; color: #e60023; font-size: 12px; padding: 0px;" value="올바르지 않은 비밀번호를 입력했습니다.">
						</a>
					</div>

					<div style="font-size: 14px; width: 280px; height: 30px; margin: auto;">
						<a> <input type="text" class="form-control form-control-sm" placeholder="비밀번호를 잊으셨나요?" name="text1" readonly style="border: 0; outline: 0; background: none; cursor: pointer; padding: 0px;">
						</a>

					</div>

					<div style="padding: 5px;">
						<button type="button" class="btn btn-info" style="width: 280px; display: block; margin: auto; border-radius: 10px;">로그인</button>
					</div>

					<div style="font-size: 14px; width: 464px; height: 30px; margin: auto;">
						<a> <input type="text" class="form-control form-control-sm" placeholder="아직 Game4U를 사용하고 있지 않으신가요? 가입하기" name="text1" readonly
							style="border: 0; outline: 0; background: none; cursor: pointer; text-align: center; padding: 0px;">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>