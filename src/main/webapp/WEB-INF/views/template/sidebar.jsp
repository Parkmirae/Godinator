<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 바로 �에section -->	
	</div>
</div>

<!-- Sidebar -->
<div id="sidebar">
	<div class="inner">
		<section id="mainPage" class="alt">
			<span>고디�이/span>
		</section>
		
		<nav id="menu">
			<header class="major"><h2>Menu</h2></header>
			<ul>
				<c:if test="${not empty userInfo}">
					<li>
					<span class="opener">마이�이지</span>
					<ul>
						<li><a href="${root}/jinro/geomsa">진로검/a></li>
						<li><a href="${root}/schoolinfo/hrating">고등�교 모교 ��</a></li>
						<li><a href="${root}/schoolinfo/urating">��교 모교 ��</a></li>
					</ul>
					</li>
				</c:if>
				<li>
					<span class="opener">�교 �보</span>
					<ul>
						<li><a href="${root}/searchschool/viewsearch">�교 검/a></li>
						<li><a href="${root}/schoolnews/viewnews">�교 �스 검/a></li>
					</ul>
				</li>
				<li>
					<span class="opener" id = "community">커�티</span>
					<ul id ="communityMenu">
						<li><a href="${root}/board/list?boardCategory=1&pg=1&key=&word=">�보게시/a></li>
						<li><a href="${root}/board/list?boardCategory=2&pg=1&key=&word=">고등�교 게시/a></li>
						<li><a href="${root}/board/list?boardCategory=3&pg=1&key=&word=">��교 게시/a></li>
						<li><a href="${root}/board/list?boardCategory=4&pg=1&key=&word=">게시�/a></li>
					</ul>
				</li>
				<li>
					<span class="opener">멘토�/span>
					<ul>
						<li><a href="${root}/mentor/findmentor">멘토 찾기</a></li>
						<li><a href="${root}/msg/msgbox">쪽�/a></li>
						<li><a href="${root}/resume/resumelist">�소�목�/a></li>
						<li><a href="${root}/resume/editlist">첨삭목록</a></li>
					</ul>
				</li>
			</ul>
		</nav>

		<!-- Section -->
		<section>
			<header class="major">
				<h2>Get in touch</h2>
			</header>
			<ul class="contact">
				<li class="icon solid fa-envelope"><a href="#">claire97j@naver.com</a></li>
				<li class="icon solid fa-phone">(000) 000-0000</li>
				<li class="icon solid fa-home">�울구로굔�로 34�43 <br>코오롱사�언�벨�1�4�
				</li>
			</ul>
		</section>

		<!-- Footer -->
		<footer id="footer">
			<p class="copyright">
				&copy; Untitled. All rights reserved. Demo Images: <a
					href="https://unsplash.com">Unsplash</a>. Design: <a
					href="https://html5up.net">HTML5 UP</a>.
			</p>
		</footer>

	</div>
</div>
</div>

<!-- Scripts -->
<script src="${root}/js/browser.min.js"></script>
<script src="${root}/js/breakpoints.min.js"></script>
<script src="${root}/js/util.js"></script>
<script src="${root}/js/main.js"></script>
<script>
	$(document).ready(function() {
		$("section#mainPage").click(function() {
			$(location).attr("href", "${root}/board/main");
		});
	});
</script>
</body>
</html>