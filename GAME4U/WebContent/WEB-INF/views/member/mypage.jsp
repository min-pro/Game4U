<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<style>
	.user-info-form{
		border:none;
		width : 100%;
		height : 40px;
	}
	#user-info-table{
		width : 100%;
	}
	#user-info-table tr{
		border-bottom : 1px solid grey;
	}
	label{
		margin-bottom : 0px;
	}
	.portfolio-block.cv{
		padding-top:100px;
	}
	.card-list{
		padding : 10px;
	}
	.card-info{
		padding-right : 25px;
		padding-left : 25px;
		line-height : 220%;
	}
	.card-head:hover{
		color : rgb(79,123,234);
	}
</style>

    <main class="page cv-page">
        <section class="portfolio-block cv">
            <div class="container">
                <div class="group">
                    <div class="heading">
                        <h2 class="text-center">계정 페이지</h2>
                    </div>
                    <div class="item"> <!-- 프로필 정보 -->
                        <div class="row">
                            <div class="col-md-4">
	                            <label for="inputFile" style="width:100%; height:100%;">
	                            	<div class="portfolio-info-card" id="profile-pic"></div>
	                            </label>
                            </div>
                            <div class="col-md-8">
                            	<table id="user-info-table">
                           			<tr>
                           				<td style="width:20%">
			                            	<label for="email">이메일</label>
                           				</td>
                           				<td>
											<input type="text" class="user-info-form" readonly id="email" value="${loginUser.email }"/>
                           				</td>
                           			</tr>
                           			<tr>
                           				<td>
			                            	<label for="name">닉네임</label>
                           				</td>
                           				<td>
											<input type="text" class="user-info-form" placeholder="닉네임" id="name" value="${loginUser.name }"/>
                           				</td>
                           			</tr>
                           			<tr>
                           				<td>
			                            	<label for="pwd">비밀번호</label>
                           				</td>
                           				<td>
											<input type="password" class="user-info-form" placeholder="비밀번호" id="pwd" value=""/>
                           				</td>
                           			</tr>
                           			<tr>
                           				<td>
			                            	<label for="pwdCheck">비밀번호 확인</label>
                           				</td>
                           				<td>
											<input type="password" class="user-info-form" placeholder="비밀번호 확인" id="pwdCheck"/>
                           				</td>
                           			</tr>
                            	</table>
								<span id="checkSpan">&nbsp;</span>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12" style="text-align: right;">
								<input type="button" class="btn btn-info" onclick="memberModify();" value="저장">
							</div>
                        </div> <!-- /row -->
                    </div><!-- /item 프로필 정보-->
                </div><!-- /group 프로필 정보 -->
                
                <div class="group"  style="margin-top : 40px;margin-bottom : 15px;"> <!-- 카드등록관리 -->
                	<h3>결제카드</h3> 
                    <div class="item" id="accordion" style="margin-bottom : 15px;">
                    
                        <c:forEach var="card" items="${dataMap.cardList }" varStatus="status">
							<div class="row"> <!-- 등록된 카드 -->
	                            <div class="col-md-12">
	                            	<div class="portfolio-info-card card-list">
	                            		<div class="row" style="margin-bottom:0px;">
		                            		<div class="col-11 card-info card-head" style="cursor: pointer;" data-toggle="collapse" data-parent="#accordion" href="#coll_${card.cardno }">
		                            			${card.coName }&nbsp;
		                            			&nbsp;|&nbsp;
		                            			&nbsp;${card.cardNum }
		                            		</div>
		                            		<div class="col-1">
		                            			<input type="button" style="padding:0px;" class="btn btn-basic" onclick="cardRemove(${card.cardno});" value="삭제">
		                            		</div>
	                            		</div>
										<div id="coll_${card.cardno }" class="panel-collapse collapse in">
											<div class="panel-body">
												<div class="row">
				                            		<div class="col-5 card-info">
				                            			<p style="margin-bottom:0">카드사</p>
					                            		<input type="text" class="form-control" readonly value="${card.coName }">
				                            		</div>
			                            		</div>
			                            		<div class="row">
				                            		<div class="col-4 card-info">
					                            		<p style="margin-bottom:0">카드번호</p>
					                            		<input type="text" class="form-control" readonly value="${card.cardNum }">
				                            		</div>
				                            		<div class="col-4 card-info">
					                            		<p style="margin-bottom:0">유효연월</p>
					                            		<input type="text" class="form-control" readonly value="${card.valDate }">
				                            		</div>
				                            		<div class="col-4 card-info">
					                            		<p style="margin-bottom:0">CVC</p>
					                            		<input type="password" class="form-control" readonly value="${card.cvc }">
				                            		</div>
			                            		</div>
			                            		<div class="row">
				                            		<div class="col-6 card-info">
				                            			<p style="margin-bottom:0">성함</p>
					                            		<input type="text" class="form-control" readonly value="${card.name }">
				                            		</div>
				                            		<div class="col-6 card-info">
				                            		<p style="margin-bottom:0">전화번호</p>
					                            		<input type="text" class="form-control" readonly value="${card.phone }">
				                            		</div>
			                            		</div>
			                            		<div class="row">
				                            		<div class="col-4 card-info">
				                            			<p style="margin-bottom:0">우편번호</p>
					                            		<input type="text" class="form-control" readonly value="${card.zip }">
				                            		</div>
			                            		</div>
			                            		<div class="row">
				                            		<div class="col-7 card-info">
				                            		<p style="margin-bottom:0">주소</p>
					                            		<input type="text" class="form-control" readonly value="${card.addr1 }">
				                            		</div>
				                            		<div class="col-5 card-info">
				                            		<p style="margin-bottom:0">상세주소</p>
					                            		<input type="text" class="form-control" readonly value="${card.addr2 }">
				                            		</div>
			                            		</div>
			                            		
											</div><!-- /panel-body -->
										</div> <!-- /colapse1 -->
	                            	</div>
	                            </div>
	                        </div><!-- /row -->
						</c:forEach>
                        
                        
                        <div class="row" style="margin-top : 20px;"> <!-- 카드 등록 -->
                            <div class="col-md-12">
                            	<div class="portfolio-info-card card-list">
                            		<div class="row">
	                            		<div class="col-11 card-info card-head" style="cursor: pointer;" data-toggle="collapse" data-parent="#accordion" href="#collapse-new">
                            				<h3 style="margin-top:1%;margin-bottom:0px;">결제카드 추가하기</h3>
	                            		</div>
	                            		<div class="col-1">
	                            			<input type="button" style="padding:0px;" class="btn btn-basic" onclick="cardRegist();" value="등록">
	                            		</div>
                            		</div>
                            		<div id="collapse-new" class="panel-collapse collapse show">
										<div class="panel-body">
		                            		<div class="row">
			                            		<div class="col-5 card-info">
			                            			<p style="margin-bottom:0">등록할 카드의 카드사를 선택해주세요.</p>
			                            			<select class="form-control" id="coName" style="width:140px;">
			                            				<option>카드사</option>
			                            				<c:forEach var="str" items="${dataMap.comList }" varStatus="status">
				                            				<option>${str}</option>
			                            				</c:forEach>
			                            			</select>
			                            		</div>
		                            		</div>
		                            		<div class="row">
			                            		<div class="col-4 card-info">
				                            		<p style="margin-bottom:0">카드번호</p>
				                            		<input type="text" maxlength="19" class="form-control" placeholder="XXXX-XXXX-XXXX-XXXX" id="cardNum">
			                            		</div>
			                            		<div class="col-4 card-info">
				                            		<p style="margin-bottom:0">유효연월</p>
				                            		<input type="month" class="form-control" placeholder="Month" id="valDate">
			                            		</div>
			                            		<div class="col-4 card-info">
				                            		<p style="margin-bottom:0">CVC</p>
				                            		<input type="text" maxlength="3" class="form-control" placeholder="cvc" id="cvc">
			                            		</div>
		                            		</div>
		                            		<div class="row">
			                            		<div class="col-6 card-info">
			                            			<p style="margin-bottom:0">성함</p>
				                            		<input type="text" class="form-control" placeholder="Name" id="cardName">
			                            		</div>
			                            		<div class="col-6 card-info">
			                            		<p style="margin-bottom:0">전화번호</p>
				                            		<input type="text" maxlength="13" class="form-control" placeholder="Phone" id="phone">
			                            		</div>
		                            		</div>
		                            		<div class="row">
			                            		<div class="col-4 card-info">
			                            			<p style="margin-bottom:0">우편번호</p>
				                            		<input type="text" class="form-control" readonly placeholder="Addr" id="zip">
			                            		</div>
			                            		<div class="col-4 card-info" style="padding-left:0px;">
			                            			<p style="margin-bottom:0">&nbsp;</p>
				                            		<input type="button" class="btn btn-primary" value="우편번호 찾기" onclick="DaumPostcode();">
			                            		</div>
		                            		</div>
		                            		<div class="row">
			                            		<div class="col-7 card-info">
			                            		<p style="margin-bottom:0">주소</p>
				                            		<input type="text" class="form-control" readonly placeholder="Addr" id="addr1">
			                            		</div>
			                            		<div class="col-5 card-info">
			                            		<p style="margin-bottom:0">상세주소</p>
				                            		<input type="text" class="form-control" placeholder="Detail" id="addr2">
			                            		</div>
		                            		</div>
	                            		</div><!-- /panel-body -->
                            		</div><!-- /colapse-new -->
                            	</div>
                            </div>
                        </div><!-- /row -->
                        
                    </div> <!-- /item 카드 등록관리 -->
                </div>
                
<!--                 <div class="group" style="margin-top:0px;"> 회원탈퇴 -->
<!--                     <div class="row"> -->
<!--                         <div class="col-md-6"> -->
<!--                         	<input type="button" class="btn btn-info" value="탈퇴하기"> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
                
            </div>
            <!-- /container -->
        </section>
        <!-- /portfolio-block cv -->
    </main>
    
    <%@ include file="mypage_js.jsp"%>
    
    
    
    
    
    
    
    
    
    
    