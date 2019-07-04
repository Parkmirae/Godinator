<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#userId").keyup(function() {
		var id = $("#userId").val();
		if(id.length < 5 || id.length > 16) {
			console.log(id.length);
			cnt = 1;
			$("#idresult").css("color", "gray");
			$("#idresult").text("�이�는 5�이16�이�입�다.");
		} else {
			$.ajax({
				type : "GET",
				url : "/godinator/user/idcheck",
				dataType : "json",
				data : {"checkid" : id},
				success : function(data) {
					cnt = parseInt(data.idcount);
					if(cnt == 0) {
						$("#idresult").css("color", "steelblue");
						$("#idresult").html("<strong>" + id + "</strong>�용 가�합�다.");
					} else {
						$("#idresult").css("color", "magenta");
						$("#idresult").html("<strong>" + id + "</strong>�용중입�다.");
					}
				}
			});
		}
	});
	
	$("#registerBtn").click(function() {
		
		if($("#userId").val() == "") {
			alert("�이�� �력�세);
			return;
		} else if($("#userName").val() == "") {
			alert("�름�력�세);
			return;
		} else if($("#pass").val() == "") {
			alert("비�번호륅력�세);
			return;
		} else if($("#pass").val() != $("#passcheck").val()) {
			alert("비�번호륕인�세);
			return;
		} else if(cnt != 0) {
			alert("�이중복 �인�세);
			return;
		} else {
			$("#memberform").attr("action", "/godinator/user/register").submit();
		}
	});

	/*  $("#zipcodeSearchBtn").click(function() {
		//alert($("#demo-category").val())
		  url:"/godinator/zipcode/zipSearch", //Controller�출        
		  type:"post",
		  data:$("#zipform").serialize(), // �청변�정 
		  dataType:"json",             // �이결과 JSON
		  success:function(jsonStr){  // jsonStr : 주소 검결과 JSON �이         
			  $("#list").html("");  
			  var errCode = jsonStr.results.common.errorCode;  
			  var errDesc = jsonStr.results.common.errorMessage;           
				  if(errCode!= ��{
					  alert(errCode+"="+errDesc);
					  }else{             
					  if(xmlStr!= null){                 
						  makeListJson(jsonStr); // JSON�이HTML�태�변        
						  }
					  }        
				  },
		  error: function(xhr,status, error){
			  alert("�러발생"); // AJAX �출 �러        
			  } 
				
	});  */
	
function makeListJson(jsonStr){
	var htmlStr = "";
	htmlStr += "<table>";
	// jquery르용JSON 결과 �이�싱
	$(jsonStr.results.juso).each(function(){
		htmlStr += "<tr>";
		htmlStr += "<td>"+this.roadAddr+"</td>";
		htmlStr += "<td>"+this.roadAddrPart1+"</td>";
		htmlStr += "<td>"+this.roadAddrPart2+"</td>";
		htmlStr += "<td>"+this.jibunAddr+"</td>";
		htmlStr += "<td>"+this.engAddr+"</td>";
		htmlStr += "<td>"+this.zipNo+"</td>";
		htmlStr += "<td>"+this.admCd+"</td>";
		htmlStr += "<td>"+this.rnMgtSn+"</td>";
		htmlStr += "<td>"+this.bdMgtSn+"</td>";
		htmlStr += "<td>"+this.detBdNmList+"</td>";
		/** API �비�공�� �� (2017.02) **/
		htmlStr += "<td>"+this.bdNm+"</td>";
		htmlStr += "<td>"+this.bdKdcd+"</td>";
		htmlStr += "<td>"+this.siNm+"</td>";
		htmlStr += "<td>"+this.sggNm+"</td>";
		htmlStr += "<td>"+this.emdNm+"</td>";
		htmlStr += "<td>"+this.liNm+"</td>";
		htmlStr += "<td>"+this.rn+"</td>";
		htmlStr += "<td>"+this.udrtYn+"</td>";
		htmlStr += "<td>"+this.buldMnnm+"</td>";
		htmlStr += "<td>"+this.buldSlno+"</td>";
		htmlStr += "<td>"+this.mtYn+"</td>";
		htmlStr += "<td>"+this.lnbrMnnm+"</td>";
		htmlStr += "<td>"+this.lnbrSlno+"</td>";
		htmlStr += "<td>"+this.emdNo+"</td>";
		htmlStr += "</tr>";
	});
	htmlStr += "</table>";
	// 결과 HTMLFORM결과 출력 DIV�입
	$("#list").html(htmlStr);
}	
});
</script>
<html>
	<head>
		<title>register_1.jsp</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/godinator/css/main.css" />
		<link rel="stylesheet" href="/godinator/css/register.css"/>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									
								</header>

							<!-- Content -->
								<div id="loginAll">
									<header class="main">
									
										<h1>�원가/h1>
										<h4 class="subtitle">기본 �적�항�력�주�요!</h4>
									</header>
							<br><br>
									<!-- Content -->
									<form id="memberform" name="memberform" method="post" action="">
									<div>
										<h3 id="contentId">�름</h3>
										   <input type="text" name="userName" id="userName" />
										   <br>
									
										<h3 id="contentPwd">�이/h3>
										   <input type="text" name="userId" id="userId" />
										   <div id="idresult"></div>
										   <br>
									
										<h3 id="contentPwd">비�번호</h3>
										   <input type="text" name="pass" id="pass" />
										   <br>
									
										<h3 id="contentPwd">비�번호 �인</h3>
										   <input type="text" name="passcheck" id="passcheck" />
										   <div id="pwdCheck"></div>
										   <br>
										
										<label for="email">�메/label><br>
									<div id="email" class="custom-control-inline">
									<input type="text" class="form-control" id=email name="email" placeholder="" size="25"> @
									<select class="form-control" id="emailDomain" name="emailDomain">
										<option value="naver.com">naver.com</option>
										<option value="google.com">google.com</option>
										<option value="daum.net">daum.net</option>
										<option value="nate.com">nate.com</option>
										<option value="hanmail.net">hanmail.net</option>
									</select>
									</div>
										   <br>
										<h5 id="contentPwd">�증번호</h5> <!-- sns로그�시 �증불필-->
										   <input type="text" name="loginPwd" id="loginPwd" />
										   <a class="button" id="emailCheckBtn">�메�증</a>
										   <div id="emailCheck"></div>
										   <br>
										
										<div class="form-group" align="left">
											<label for="tel">�화번호</label>
											<div id="tel" class="custom-control-inline">
											<select class="form-control" id="phone1" name="phone1">
												<option value="010">010</option>
												<option value="02">02</option>
												<option value="031">031</option>
												<option value="032">032</option>
												<option value="041">041</option>
												<option value="051">051</option>
												<option value="061">061</option>
											</select> _
											<input type="text" class="form-control" id="phone2" name="phone2" placeholder="1234"> _
											<input type="text" class="form-control" id="phone3" name="phone3" placeholder="5678">
											</div>
										</div>
										
										   <br> <br>
									     
										<h3 id="contentPwd">�편번호</h3>
										   <input type="text" name="zipcode" id="zipcode"/>
										   <a href="#" class="button" id="zipcodeSearchBtn">�편번호검/a>
										   
									<form name="zipform" id="zipform" method="post">    <!-- �청 변�정 (검�결과형�정, json) -->     
									<input type="hidden" name="currentPage" value="1"/>				<!-- �청 변�정 (�재 �이지. currentPage : n > 0) -->
									  <input type="hidden" name="countPerPage" value="10"/>				<!-- �청 변�정 (�이지출력 개수. countPerPage 범위 : 0 < n <= 100) -->
									  <input type="hidden" name="resultType" value="json"/> 			<!-- �청 변�정 (검�결과형�정, json) --> 
									  <input type="hidden" name="confmKey" value="TESTJUSOGOKR"/>		<!-- �청 변�정 (�인 -->  
									  <input type="text"   name="keyword" value=""/>					<!-- �청 변�정 (�워 -->
									</form> 
 	   								<div id="list"> <!-- 검결과 리스출력 �역 -->
 	   								 </div>
										   <br>
										   <br>
										<h3 id="contentPwd">주소</h3>
										   <input type="text" name="address" id="address" />
										   <br>
									
										<h3 id="contentPwd">�세주소</h3>
										   <input type="text" name="addressDetail" id="addressDetail" />
									</div>
									</form>
										   <br>
									<ul class="actions">
										<li>1/4</li>
										<li><a href="#" class="button primary" id="registerBtn">�음�이지</a></li>
									</ul>
									
								</div>

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
										<li><a href="/godinator/index.jsp">Homepage</a></li>
										<li><a href="/godinator/generic.jsp">Generic</a></li>
										<li><a href="/godinator/elements.jsp">Elements</a></li>
										<li>
											<span class="opener">Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li><a href="#">Etiam Dolore</a></li>
										<li><a href="#">Adipiscing</a></li>
										<li>
											<span class="opener">Another Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li><a href="#">Maximus Erat</a></li>
										<li><a href="#">Sapien Mauris</a></li>
										<li><a href="#">Amet Lacinia</a></li>
									</ul>
								</nav>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Ante interdum</h2>
									</header>
									<div class="mini-posts">
										<article>
											<a href="#" class="image"><img src="/godinator/resources/images/pic07.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
										<article>
											<a href="#" class="image"><img src="/godinator/resources/images/pic08.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
										<article>
											<a href="#" class="image"><img src="/godinator/resources/images/pic09.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
									</div>
									<ul class="actions">
										<li><a href="#" class="button">More</a></li>
									</ul>
								</section>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Get in touch</h2>
									</header>
									<p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
									<ul class="contact">
										<li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a></li>
										<li class="icon solid fa-phone">(000) 000-0000</li>
										<li class="icon solid fa-home">1234 Somewhere Road #8254<br />
										Nashville, TN 00000-0000</li>
									</ul>
								</section>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="/godinator/resources/assets/js/jquery.min.js"></script>
			<script src="/godinator/resources/assets/js/browser.min.js"></script>
			<script src="/godinator/resources/assets/js/breakpoints.min.js"></script>
			<script src="/godinator/resources/assets/js/util.js"></script>
			<script src="/godinator/resources/assets/js/main.js"></script>

	</body>
</html>