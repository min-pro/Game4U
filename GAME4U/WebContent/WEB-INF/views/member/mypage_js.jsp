<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form id="cardForm">
	<input type="hidden" name="coName" >
	<input type="hidden" name="cardNum" >
	<input type="hidden" name="valDate" >
	<input type="hidden" name="cvc" >
	<input type="hidden" name="name" >
	<input type="hidden" name="phone" >
	<input type="hidden" name="zip" >
	<input type="hidden" name="addr1" >
	<input type="hidden" name="addr2" >
</form>

<form id="memberForm">
	<input type="hidden" name="email" value="${loginUser.email }"/>
	<input type="hidden" name="name"/>
	<input type="hidden" name="pwd"/>
</form>

<form role="imageForm" action="upload/picture.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="oldPicture" value="${loginUser.picture}" />
	<input type="file" id="inputFile" name="picture" style="display:none" onchange="uploadPicture();"/>
</form>

<script>
	var checkOk = true;
	window.onload = function(){
		
		var imageURL = "<%=request.getContextPath()%>/member/getImage.do?picName=${loginUser.picture}";
		$('#profile-pic').css({
							  'background-image':'url('+imageURL+')',
							  'background-position':'center',
							  'background-size':'cover',
							  'background-repeat':'no-repeat'
							});
		
		$('#pwdCheck').on("input", function(){
			var pwd = $('#pwd').val();
			var check = $('#pwdCheck').val();
			if(pwd == check){
				$("#checkSpan").text("비밀번호가 일치합니다.");
				$("#checkSpan").css("color", "skyblue");
				checkOk=true;
			} else {
				$("#checkSpan").text("비밀번호가 일치하지 않습니다.");
				$("#checkSpan").css("color", "red");
				checkOk=false;
			}
		});
		$('#pwd').on("input", function(){
			var pwd = $('#pwd').val();
			var check = $('#pwdCheck').val();
			if(pwd == check){
				$("#checkSpan").text("비밀번호가 일치합니다.");
				$("#checkSpan").css("color", "skyblue");
				checkOk=true;
			} else {
				$("#checkSpan").text("비밀번호가 일치하지 않습니다.");
				$("#checkSpan").css("color", "red");
				checkOk=false;
			}
		});
		
		$('input#cardNum').on('input', function(){
			var str = $('input#cardNum').val();
			str = str.replace(/[^0-9]/g, '');
		      var tmp = '';
		      if( str.length < 5){
		    	  tmp += str;
		      }else if(str.length < 9){
		          tmp += str.substr(0, 4);
		          tmp += '-';
		          tmp += str.substr(4);
		      }else if(str.length < 13){
		          tmp += str.substr(0, 4);
		          tmp += '-';
		          tmp += str.substr(4, 4);
		          tmp += '-';
		          tmp += str.substr(8);
		      }else if(str.length < 17){              
		          tmp += str.substr(0, 4);
		          tmp += '-';
		          tmp += str.substr(4, 4);
		          tmp += '-';
		          tmp += str.substr(8,4);
		          tmp += '-';
		          tmp += str.substr(12);
		      }
		  
		      $('input#cardNum').val(tmp);
		});
		$('input#phone').on('input', function(){
			var str = $('input#phone').val();
			str = str.replace(/[^0-9]/g, '');
		      var tmp = '';
		      if( str.length < 4){
		          tmp += str;
		      }else if(str.length < 7){
		          tmp += str.substr(0, 3);
		          tmp += '-';
		          tmp += str.substr(3);
		      }else if(str.length < 11){
		          tmp += str.substr(0, 3);
		          tmp += '-';
		          tmp += str.substr(3, 3);
		          tmp += '-';
		          tmp += str.substr(6);
		      }else{              
		          tmp += str.substr(0, 3);
		          tmp += '-';
		          tmp += str.substr(3, 4);
		          tmp += '-';
		          tmp += str.substr(7);
		      }
		      $('input#phone').val(tmp);
		})
		
	}
	
	function memberModify(){
		if(checkOk==true){
			$('form#memberForm input[name="pwd"]').val($('#pwd').val().trim());
			$('form#memberForm input[name="name"]').val($('#name').val().trim());
			if($('form#memberForm input[name="name"]').val() == ""){
				alert("닉네임을 적어주세요.");
				$('form#memberForm input[name="name"]').focus();
				return false;
			}
			var form = $('form#memberForm');
			form.attr({"action" : "modify.do", "method" : "post"});
			form.submit();
		} else {
			alert("비밀번호를 확인해주세요.");
			$('#pwdCheck').focus();
			return false;
		}
		
	}
	
	function preViewPicture(inputImage,target){

		//미리보기
		if (inputImage.files && inputImage.files[0]) {
			
	        var reader = new FileReader();
	        
	        reader.onload = function (e) {
	        	//이미지 미리보기	        	
	        	target.css({'background-image':'url('+e.target.result+')',
					  'background-position':'center',
					  'background-size':'cover',
					  'background-repeat':'no-repeat'
	        		});
	        	
	        }
	        
	        reader.readAsDataURL(inputImage.files[0]);
		}
	}
	
	function uploadPicture(){
		var inputImage = $('input#inputFile')[0];
		
		var fileFormat=
			inputImage.value.substr(inputImage.value.lastIndexOf(".")+1).toUpperCase();
		//이미지 확장자 jpg 확인
		if(fileFormat!="JPG"){
			alert("이미지는 jpg 형식만 가능합니다.");
			return;
		} 
		//이미지 파일 용량 체크
		if(inputImage.files[0].size>1024*1024*1){
			alert("사진 용량은 1MB 이하만 가능합니다.");
			return;
		};
		
		var form = new FormData($('form[role="imageForm"]')[0]);
		
		$.ajax({
			url:"<%=request.getContextPath()%>/member/pictureUpload.do",
			data:form,
			type:'post',
			processData:false,
			contentType:false,
			success:function(data){
				//저장된 파일명 저장.
				$('input#oldFile').val(data); // 변경시 삭제될 파일명
				preViewPicture(inputImage,$('div#profile-pic'));
			},
			error:function(error){
				alert("현재 사진 업로드가 불가합니다.");
			}
		});
	};
	
	function cardRemove(cardno){
		location.href="cardRemove.do?cardno="+ cardno;
	}
	

	function cardRegist(){
		$("form#cardForm input[name='coName']").val($("#coName").val());
		$("form#cardForm input[name='cardNum']").val($("#cardNum").val());
		$("form#cardForm input[name='valDate']").val($("#valDate").val());
		$("form#cardForm input[name='cvc']").val($("#cvc").val());
		$("form#cardForm input[name='name']").val($("#cardName").val());
		$("form#cardForm input[name='phone']").val($("#phone").val());
		$("form#cardForm input[name='zip']").val($("#zip").val());
		$("form#cardForm input[name='addr1']").val($("#addr1").val());
		$("form#cardForm input[name='addr2']").val($("#addr2").val());
		
		var cardForm = $("form#cardForm input");
		if($("input[name='coName']").val()=="카드사"){
			alert("카드사를 선택하세요.");
			$("input[name='coName']").focus();
			return false;
		}
// 		for(var i = 0; i < cardForm.length; i++){
// 			if(cardForm[i].value == ""){
// 				alert("모든 정보를 입력해야 합니다.");
// 				cardForm[i].focus();
// 				return false;
// 			}
// 		}
		
		var form = $("form#cardForm");
		form.attr({"action" : "cardRegist.do", "method" : "post"});
		form.submit();
		
	}
	
	function DaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	        	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip').value = data.zonecode;
                document.getElementById("addr1").value = roadAddr;
                
                
            }
	    }).open();
	};

</script>


<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>















