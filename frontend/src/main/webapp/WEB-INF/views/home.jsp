<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="images" value="/resources/images" />
<div class="container">

	<div class="row">

		<div class="col s3">
			<jsp:include page="./common/sidebar.jsp"></jsp:include>
		</div>

		<div class="col s9">

			<div class="row carousel-holder">

				<div class="col-md-12">
					<div class="carousel carousel-slider center" data-indicators="true">
						<div class="carousel-fixed-item center">
							<a class="btn waves-effect white grey-text darken-text-2">button</a>
						</div>
						<div class="carousel-item red white-text" href="#one!">
							<h2>First Panel</h2>
							<p class="white-text">This is your first panel</p>
						</div>
						<div class="carousel-item amber white-text" href="#two!">
							<h2>Second Panel</h2>
							<p class="white-text">This is your second panel</p>
						</div>
						<div class="carousel-item green white-text" href="#three!">
							<h2>Third Panel</h2>
							<p class="white-text">This is your third panel</p>
						</div>
						<div class="carousel-item blue white-text" href="#four!">
							<h2>Fourth Panel</h2>
							<p class="white-text">This is your fourth panel</p>
						</div>
					</div>
				</div>

			</div>

			<div class="row">

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="http://placehold.it/1600x1000" alt="">
						<div class="caption">
							<h4 class="pull-right">$24.99</h4>
							<h4>
								<a href="#">First Product</a>
							</h4>
							<p>
								See more snippets like this online store item at <a
									target="_blank" href="http://www.bootsnipp.com">Bootsnipp -
									http://bootsnipp.com</a>.
							</p>
						</div>
						<div class="ratings">
							<p class="pull-right">15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="http://placehold.it/1600x1000" alt="">
						<div class="caption">
							<h4 class="pull-right">$64.99</h4>
							<h4>
								<a href="#">Second Product</a>
							</h4>
							<p>This is a short description. Lorem ipsum dolor sit amet,
								consectetur adipiscing elit.</p>
						</div>
						<div class="ratings">
							<p class="pull-right">12 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="http://placehold.it/1600x1000" alt="">
						<div class="caption">
							<h4 class="pull-right">$74.99</h4>
							<h4>
								<a href="#">Third Product</a>
							</h4>
							<p>This is a short description. Lorem ipsum dolor sit amet,
								consectetur adipiscing elit.</p>
						</div>
						<div class="ratings">
							<p class="pull-right">31 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="http://placehold.it/1600x1000" alt="">
						<div class="caption">
							<h4 class="pull-right">$84.99</h4>
							<h4>
								<a href="#">Fourth Product</a>
							</h4>
							<p>This is a short description. Lorem ipsum dolor sit amet,
								consectetur adipiscing elit.</p>
						</div>
						<div class="ratings">
							<p class="pull-right">6 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="http://placehold.it/1600x1000" alt="">
						<div class="caption">
							<h4 class="pull-right">$94.99</h4>
							<h4>
								<a href="#">Fifth Product</a>
							</h4>
							<p>This is a short description. Lorem ipsum dolor sit amet,
								consectetur adipiscing elit.</p>
						</div>
						<div class="ratings">
							<p class="pull-right">18 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<h4>
						<a href="#">Like this template?</a>
					</h4>
					<p>
						If you like this template, then check out <a target="_blank"
							href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">this
							tutorial</a> on how to build a working review system for your online
						store!
					</p>
					<a class="btn btn-primary" target="_blank"
						href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">View
						Tutorial</a>
				</div>

			</div>

		</div>

	</div>

</div>
