<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	
		<title>포트폴리오 매칭</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="./resources/Index_Resources/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="./resources/Index_Resources/assets/css/noscript.css" /></noscript>
		
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> 
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
		<!-- 회원가입 에이작스 및 비밀번호 일치 체크 -->
		<script>
		var Btnchk = new String("false"); // 입력체크
		
		// 아이디 중복체크 Ajax
		function id_overlap_check()
		{		
			
			id_overlap_input=document.querySelector('.username_input');
			if($('.username_input').val()=='')
				{
					$('.idchecklabel').text('아이디를 입력하세요');
					$('.idchecklabel').css('color','red');
				}
			else{
			$.ajax({
				url: "./check",
				type: "POST",
				data: {
					'username' : id_overlap_input.value
				},
				datatype: 'json',
				success: function(data)
				{
					console.log(data);
					if(data=="fail")
						{
							Btnchk=new String("flase");
							$('.registerBtn').attr("disabled","disabled");
							$('.idchecklabel').text('이미 존재하는 아이디');
							$('.idchecklabel').css('color','red');
							id_overlap_input.focus();
							return;
						}
					else
						{
							Btnchk=new String("true");
							if($('.inputpwd').val()==$('.inputpwd2').val() && $('.inputpwd').val()!='' && $('.inputpwd2').val()!='' )
								{
									$('.registerBtn').removeAttr("disabled");
								}
							$('.idchecklabel').text('사용 가능한 아이디');
							$('.idchecklabel').css('color','green');
							$('.username_input').attr("check_result","success");
							return;
						}
				}
				});
			}
		}
		
		// 패스워드 확인처리
		function pw_check()
		{
			if($('.inputpwd').val()=='' && $('.inputpwd2').val()=='')
				{
					$('.pwdchecklabel').text("패스워드를 입력하세요");
					$('.pwdchecklabel').css('color','red');
				}
			else if($('.inputpwd').val()==$('.inputpwd2').val())
				{ 
					//아이디도 중복확인이 된다면 버튼 활성화
					if(Btnchk=="true")
						{
							$('.registerBtn').removeAttr("disabled");
						}
					$('.pwdchecklabel').text("패스워드가 일치합니다.");
					$('.pwdchecklabel').css('color','green');
				
				}
			else
				{
					$('.registerBtn').attr("disabled","disabled");
					$('.pwdchecklabel').text("패스워드가 일치하지 않습니다.");
					$('.pwdchecklabel').css('color','red');
				}
			
		}
		</script>
	</head>
	
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper" class="divided">

				<!-- One -->
					<section class="banner style1 orient-left content-align-left image-position-right fullscreen onload-image-fade-in onload-content-fade-right">
						<div class="content">
							<h3>포토폴리오 매칭</h3>
							<p class="major">마음이 맞는 사람과 실력을 쌓아갈 수 있어요.</p>
							<form action="./login" method="post">
							    	<div class="field half">
										<label for="name">Id</label>
										<input type="text" name="userid" id="name" value=""/>
									</div>
                                <br>
                                    <div class="field half">
										<label for="name">Password</label>
										<input type="password" name="userpwd" id="name" value=""/>
									</div>
									
								<button type="submit" class="button big wide" style="margin-top: 30px">Login</button>
								<!-- <button class="button big wide" data-toggle="modal" data-target="#exampleModalLong">Join</button> -->	
							 	<a href="#first" class="button big wide" data-toggle="modal" data-target="#exampleModalLong" >Join</a>		  
				        </form>
						</div>
						<div class="image">
							<img src="./resources/Index_Resources/images/banner.jpg" alt="" />
						</div>
					</section>
			</div>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialSog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Sign Up</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body" >
        <form  action="./join" method="post">           	
            <div class="field half" >
            	<input oninput="id_overlap_check()" autofocus placeholder="아이디" class=" my-1 username_input" type="text" name="userid" id="name" value=""/>
        	</div>
        	<!-- 에이작스 데이터받기 -->
        	<div class="field half">
        		<label class="idchecklabel" check_result="fail" ></label>
        	</div>
            <div class="field half">
            	<input placeholder="패스워드" class="my-1 inputpwd" oninput="pw_check()" type="password" name="userpwd" id="name" value=""/>
            </div>
            <div class="field half">
            	<input  placeholder="패스워드 확인" class="my-1 inputpwd2" oninput="pw_check()" type="password"  id="name" value=""/>
            </div>
            <!-- 패스워드 데이터받기 -->
        	<div class="field half">
        		<label class="pwdchecklabel" ></label>
        	</div>
        	
            <div class="field half">
            	<input  placeholder="이름" class="my-1" type="text" name="username" id="name" value=""/>
            </div>
            <div class="field half">
            	<input  placeholder="생년월일" class="my-1" type="text" name="userbirth" id="name" value=""/>
            </div>
            <div class="field half">
            	<input  placeholder="전화번호" class="my-1" type="text" name="userphone" id="name" value=""/>
            </div>
            <div class="field half">
            	<input  placeholder="이메일" class="my-1" type="text" name="usermail" id="name" value=""/>
            </div>
            <!-- 
            <div class="field half">
            	<input  class="my-1" type="file" name="report"  />
            </div>
             -->
              <div class="form-row ml-1">
			    <div class="form-group col-md-6">
			   	 <label for="inputState">개발분야</label>
			      <select id="inputState" class="form-control" name="usermajor">
			        <option value="BackEnd" selected>Back-End</option>
			        <option value="FrontEnd">Front-End</option>
			        <option value="WebPublisher">Web Publisher</option>
			        <option value="FullStack">Full-Stack</option>
			        <option value="DataScience">Data Science</option>
			      </select>
			    </div>
			    <div class="form-group col-md-4">
			   	 <label for="inputState">주 언어</label>
			      <select id="inputState" class="form-control" name="userconcentration">
			        <option value="Java" selected>Java</option>
			        <option value="JavaScript" >JavaScript</option>
			        <option value="Python">Python</option>
			        <option value="C" >C</option>
			        <option value="C++">C++</option>
			        <option value="Go">Go</option> 
			      </select>
			    </div>
   			 </div> 
   			       <div class="modal-footer">
       			  <button type="button" class="button big wide" data-dismiss="modal">Cancel</button>
      			  <button type="submit" class="button big wide">Join</button>
     		</div>  
        </form>

            
      </div>

    </div>
  </div>
</div>
		<!-- Scripts -->
			<script src="./resources/Index_Resources/assets/js/jquery.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/browser.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/breakpoints.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/util.js"></script>
			<script src="./resources/Index_Resources/assets/js/main.js"></script>

	</body>
</html>