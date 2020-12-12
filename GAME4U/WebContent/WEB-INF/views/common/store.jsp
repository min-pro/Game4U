<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>


	<main class="page lanidng-page">

	<nav class="navbar navbar-light navbar-expand-md navigation-clean-search" style="padding: 12px; width: 100%; text-align: center;">
		<div class="container">
			<button style="outline: none;" data-toggle="collapse" class="ml-auto navbar-toggler" data-target="#navcol-1">
				<span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navcol-1" style="text-align: center;">
				<div style="margin: auto; display: flex;">
					<ul class="nav navbar-nav" style="">
						<li style="cursor: pointer;" class="nav-item"><a style="padding: 8px 8px;" class="nav-link active" href="#">Store</a></li>
						<li style="cursor: pointer;" class="nav-item"><a style="" class="nav-link active" href="#">Search</a></li>
					</ul>
					<form class="form-inline" target="_self" style="">
						<div class="form-group" style="margin: auto;">
							<input style="border-bottom: 1px solid #eee;" class="form-control search-field" type="search" id="search-field" name="search"> <label style="cursor: pointer;" for="search-field">
								<i class="fa fa-search"></i>
							</label>
						</div>
					</form>
				</div>

			</div>
		</div>
	</nav>

	<!-- <GoodGame> -->
	<section id="GoodGame" class="portfolio-block" style="padding: 0px 0px 0px 0px;">
		<div class="container">
			<h3 style="display: inline-block;">인기 게임</h3>
			<a style="height: 33px; font-weight: bold; padding: 3px 10px 0px 10px; margin: 0px 0px 8px; display: inline-block;" class="btn btn-light" role="button" href="#">MORE</a>
			<div class="row">
				<div class="col-md-8 text" style="padding: 0px;">
					<img style="object-fit: cover" src="<%=request.getContextPath()%>/resources/img/staduTest.jpg">
				</div>

				<div class="col-md-4" style="padding: 0px; text-overflow: ellipsis;">
					<p style="">Stardew Valley에서 할아버지의 오래된 농장 부지를 물려 받았습니다. 손수 도구와 동전 몇 개로 무장 한 당신은 새로운 삶을 시작하기 시작했습니다. 땅에서 살며 자란 들판을 번성하는 집으로 바꾸는 법을 배울 수 있습니까?</p>
				</div>
			</div>
		</div>
	</section>
	<!-- /#GoodGame --> <!-- <newGameRow> -->
	<section id="newGameRow" class="portfolio-block" style="padding: 50px;">
		<div class="container">
			<h3 style="display: inline-block;">신규 게임</h3>
			<a style="height: 33px; font-weight: bold; padding: 3px 10px 0px 10px; margin: 0px 0px 8px; display: inline-block;" class="btn btn-light" role="button" href="#">MORE</a>
			<div class="row">
				<div class="col-md-3">
					<div class="card special-skill-item border-0">
						<div class="card-header bg-transparent border-0">
							<i class="icon ion-ios-star-outline"></i>
						</div>
						<div class="card-body">
							<h3 class="card-title">Web Design</h3>
							<p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card special-skill-item border-0">
						<div class="card-header bg-transparent border-0">
							<i class="icon ion-ios-star-outline"></i>
						</div>
						<div class="card-body">
							<h3 class="card-title">Web Design</h3>
							<p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card special-skill-item border-0">
						<div class="card-header bg-transparent border-0">
							<i class="icon ion-ios-lightbulb-outline"></i>
						</div>
						<div class="card-body">
							<h3 class="card-title">Interface Design</h3>
							<p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card special-skill-item border-0">
						<div class="card-header bg-transparent border-0">
							<i class="icon ion-ios-gear-outline"></i>
						</div>
						<div class="card-body">
							<h3 class="card-title">Photography and Print</h3>
							<p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /#newGameRow -->

	<section class="portfolio-block photography">
		<div class="container">
			<h3 style="display: inline-block;">특별 할인 게임</h3>
			<a style="height: 33px; font-weight: bold; padding: 3px 10px 0px 10px; margin: 0px 0px 8px; display: inline-block;" class="btn btn-light" role="button" href="#">MORE</a>
			
			<div class="row no-gutters">
				<div class="col-md-6 col-lg-4 item zoom-on-hover">
					<a href="#"><img class="img-fluid image" src="<%=request.getContextPath()%>/resources/assets/img/nature/image5.jpg"></a>
				</div>
				<div class="col-md-6 col-lg-4 item zoom-on-hover">
					<a href="#"><img class="img-fluid image" src="<%=request.getContextPath()%>/resources/assets/img/nature/image2.jpg"></a>
				</div>
				<div class="col-md-6 col-lg-4 item zoom-on-hover">
					<a href="#"><img class="img-fluid image" src="<%=request.getContextPath()%>/resources/assets/img/tech/image4.jpg"></a>
				</div>
			</div>
		</div>
	</section>

	<!-- <HotFreeGame> -->
	<section id="HotFreeGame" class="portfolio-block" style="padding: 50px">
		<div class="container">
			<h3 style="display: inline-block;">인기 무료 게임</h3>
			<a style="height: 33px; font-weight: bold; padding: 3px 10px 0px 10px; margin: 0px 0px 8px; display: inline-block;" class="btn btn-light" role="button" href="#">MORE</a>
			<div class="row">
				<div class="col-md-3">
					<div class="card special-skill-item border-0">
						<div class="card-header bg-transparent border-0">
							<i class="icon ion-ios-star-outline"></i>
						</div>
						<div class="card-body">
							<h3 class="card-title">Web Design</h3>
							<p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card special-skill-item border-0">
						<div class="card-header bg-transparent border-0">
							<i class="icon ion-ios-star-outline"></i>
						</div>
						<div class="card-body">
							<h3 class="card-title">Web Design</h3>
							<p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card special-skill-item border-0">
						<div class="card-header bg-transparent border-0">
							<i class="icon ion-ios-lightbulb-outline"></i>
						</div>
						<div class="card-body">
							<h3 class="card-title">Interface Design</h3>
							<p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card special-skill-item border-0">
						<div class="card-header bg-transparent border-0">
							<i class="icon ion-ios-gear-outline"></i>
						</div>
						<div class="card-body">
							<h3 class="card-title">Photography and Print</h3>
							<p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /#HotFreeGame --> </main>

	<!-- <HotReplyGame> -->
	<section id="HotReplyGame" class="portfolio-block" style="padding: 30px;">
		<div class="container">
			<h3 style="display: inline-block;">커뮤니티 추천 게임</h3>
			<a style="height: 33px; font-weight: bold; padding: 3px 10px 0px 10px; margin: 0px 0px 8px; display: inline-block;" class="btn btn-light" role="button" href="#">MORE</a>
			<div class="row">
				<div class="col-md-8 text">
					<img style="object-fit: cover" src="<%=request.getContextPath()%>/resources/img/staduTest.jpg">
				</div>

				<div class="col-md-4">
					<p>Stardew Valley에서 할아버지의 오래된 농장 부지를 물려 받았습니다. 손수 도구와 동전 몇 개로 무장 한 당신은 새로운 삶을 시작하기 시작했습니다. 땅에서 살며 자란 들판을 번성하는 집으로 바꾸는 법을 배울 수 있습니까?</p>
				</div>
			</div>
		</div>
	</section>
	<!-- /#HotReplyGame -->
</div>

	<%@ include file="login.jsp"%>
	<%@ include file="regist.jsp"%>