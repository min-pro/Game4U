<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!-- The Modal -->
<div class="modal" id="signUpModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- Modal body -->
			<div class="modal-body">
				<Button style="outline: none;" type="button" class="close" data-dismiss="modal">&times;</Button>

				<div style="padding: 20px 0px;">
					<div style="text-align: center; padding: 20px;">
						<h5 id=""
							style="margin: 0px; display: inline-block; font-weight: bold; background: -webkit-linear-gradient(#6091ef, #6091ef); -webkit-background-clip: text; -webkit-text-fill-color: transparent;">Sign
							Up</h5>
						<img id="logo" src="<%=request.getContextPath()%>/resources/img/logo.png" style="vertical-align: top; display: inline-block; margin: auto; width: 24px; height: 24px;">
						<h5 id=""
							style="margin: 0px; display: inline-block; font-weight: bold; background: -webkit-linear-gradient(#6091ef, #6091ef); -webkit-background-clip: text; -webkit-text-fill-color: transparent;">Game4U</h5>
					</div>


					<form action="<%=request.getContextPath()%>/common/login.do" method="post" style="text-align: center;">
						<div style="margin-left:60px; padding: 5px 5px 5px 5px; display: inline-block;">
							<input type="email" class=" form-control" id="email" name="email" placeholder=" 이메일" style="width: 280px; border-radius: 10px; margin: auto;">
						</div>
						
						<div style="display: inline-block;">
							<button type="button" class="btn btn-info" style="padding:5px; width: 60px; display: block; margin: auto; border-radius: 10px;">Check!</button>
						</div>
						
						<div style="margin-left:60px; display: inline-block; padding: 5px 5px 5px 5px;">
							<input type="text" class=" form-control" id="emailCheckNum" name="emailCheckNum" placeholder="이메일 인증코드" style="width: 280px; border-radius: 10px; margin: auto;">
						</div>
						
						<div style="display: inline-block;">
							<button type="button" class="btn btn-info" style="padding:5px; width: 60px; display: block; margin: auto; border-radius: 10px;">Check!</button>
						</div>

						<div id="signUp-email-error" style="font-size: 12px; width: 280px; height: 30px; margin: auto; display: none;">
							<a> <input type="text" class="form-control form-control-sm" name="text1" readonly
								style="border: 0; outline: 0; background: none; cursor: pointer; text-align: left; color: #e60023; font-size: 12px; padding: 0px;" value="올바른 이메일 주소가 아닙니다.">
							</a>
						</div>

						<div style="padding: 5px;">
							<input type="text" class="form-control" id="nickName" name="nickName" placeholder="닉네임 입력" style="width: 280px; border-radius: 10px; margin: auto;">
						</div>
						
						<div style="padding: 5px;">
							<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요" style="width: 280px; border-radius: 10px; margin: auto;">
						</div>

						<div id="signUp-password-error" style="font-size: 12px; width: 280px; height: 30px; margin: auto; display: none;">
							<a> <input type="text" class="form-control form-control-sm" name="text1" readonly
								style="border: 0; outline: 0; background: none; cursor: pointer; text-align: left; color: #e60023; font-size: 12px; padding: 0px;" value="비밀번호는 6자 이상 영소문자, 대문자, 특수문자 1개이상 입력하세요!">
							</a>
						</div>

						<div style="padding: 5px;">
							<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 확인" style="width: 280px; border-radius: 10px; margin: auto;">
						</div>

						<div id="signUp-password-check-error" style="font-size: 12px; width: 280px; height: 30px; margin: auto; display: none;">
							<a> <input type="text" class="form-control form-control-sm" name="text1" readonly
								style="border: 0; outline: 0; background: none; cursor: pointer; text-align: left; color: #e60023; font-size: 12px; padding: 0px;" value="비밀번호가 일치하지 않습니다.">
							</a>
						</div>

						<div style="padding: 15px 5px 5px 5px;">
							<button type="button" class="btn btn-info" style="width: 280px; display: block; margin: auto; border-radius: 10px;">가입하기</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</div>