<!-- 头部公共区块 -->
@include('header')

	<!--content-->
	<div class="content">
		<div class="container">
		<div class="women-in">
			<div class="col-md-9 col-d">
				<div class="banner">
					<div class="banner-matter">
						<label>Collection</label>
						<h2>Summmer</h2>
						<p>Helping you look cool</p>
						
						</div>
						<div class="you">
							<span>40<label>%</label></span>
							<small>off</small>
						</div>			
						<p  class="para-in">Some text regarding the featured product.</p>
				</div>
				<!---->
				<div class="in-line">
				<!-- 商品展示区块-->

				@foreach($nameData[1] as $k=>$val)

					<div class="para-an">
						<h3 style="font-family:'楷体'">{{ $val->c_name }}</h3>
						<p>Check our all latest products in this section.</p>
					</div>
					<div class="lady-in">


					@for($vo=1;$vo<7;$vo++)

						<div class="col-md-4 you-para @if($vo%3==0) @{{ para-grid }} @endif">
							<a href="index.php?m=index&c=index&a=single"><img class="img-responsive pic-in" src="/images/pi.jpg" alt=" " ></a>
							<div class="you-in">
								<span>15<label>%</label></span>
							<small>off</small>
							</div>
							<p>Premium Denim Women's Hidden</p>
							<span>￥179.00  | <label class="cat-in"> </label> <a href="#">Add to Cart </a></span>
						</div>

					@endfor
						<div class="clearfix"> </div>
					</div>

				@endforeach

				<!-- 商品展示区块结束 -->	
				</div>
			</div>
			<div class="col-md-3 col-m-left">
				<div class="in-left" onclick="location.href='{{ url('/index/women') }}'">				
					<p class="code">Cool COLLECTIONS</p>		
					<div class="cool">		
					</div>		
				</div>

			<!-- 精选店铺区块 -->
				<div class="twitter-in">
					<h5 style="font-family:'黑体'">{{ $nameData[4][0]->c_name}}</h5>
					<span class="twitter-ic">	</span>
					<div class="up-date">
						<p>@suniljoshi Looks like nice and dicent design</p>
						<a href="#">http://bit.ly/sun</a>
						<p class="ago">About 1 hour ago via twitterfeed</p>
					</div>
					<!-- <a href="#" class="tweets">More Tweets</a> -->
					<!-- <div class="clearfix"> </div> -->
				</div>

				@for($vo=1;$vo<6;$vo++)

				<div class="discount">
					<a href="{{ url('/index/single') }}"><img class="img-responsive pic-in" src="/images/p2.jpg" alt=" " >	</a>		
						<p class="no-more">Exclusive <b>discount</b> <span>Womens wear</span></p>					
					<a href="#" class="know-more">know more</a>
				</div>

				@endfor
			<!-- 精选店铺区块结束 -->

			<!-- 头条区块 -->
				<div class="twitter-in">
					<h5>TWITTER  UPDATES</h5>
					<span class="twitter-ic">	</span>
					<div class="up-date">
						<p>@suniljoshi Looks like nice and dicent design</p>
						<a href="#">http://bit.ly/sun</a>
						<p class="ago">About 1 hour ago via twitterfeed</p>
					</div>
					<div class="up-date">
						<p>@suniljoshi Looks like nice and dicent design</p>
						<a href="#">http://bit.ly/sun</a>
						<p class="ago">About 1 hour ago via twitterfeed</p>
					</div>
					<a href="#" class="tweets">More Tweets</a>
					<div class="clearfix"> </div>
				</div>

				@for($vo=1;$vo<6;$vo++)

				<div class="discount">
					<a href="index.php?m=index&c=index&a=single"><img class="img-responsive pic-in" src="/images/p2.jpg" alt=" " >	</a>		
						<p class="no-more">Exclusive <b>discount</b> <span>Womens wear</span></p>					
					<a href="#" class="know-more">know more</a>
				</div>

				@endfor
			<!-- 头条区块结束 -->

			</div>
			<div class="clearfix"> </div>
			</div>
			<!---->
			<div class="lady-in-on">
			<div class="buy-an">
				<h3>{{ $nameData[5][0]->c_name }}</h3>
				<p>Check our all latest products in this section.</p>
			</div>
			<ul id="flexiselDemo1">	

			@for($vo=1;$vo<9;$vo++)

				<li>
					<a href="#"><img class="img-responsive women" src="/images/pic.jpg" alt=""></a>
					<div class="hide-in">
						<p>Premium Denim Women's Hidden</p>
						<span>$179.00  |  <a href="#">Buy Now </a></span>
					</div>
				</li>

			@endfor	
				
            </ul>

		</div>
	</div>
	</div>
<script type="text/javascript">
	$(window).load(function() {
		$("#flexiselDemo1").flexisel({
			visibleItems: 4,
			animationSpeed: 1000,
			autoPlay: true,
			autoPlaySpeed: 3000,    		
			pauseOnHover: true,
			enableResponsiveBreakpoints: true,
	    	responsiveBreakpoints: { 
	    		portrait: { 
	    			changePoint:480,
	    			visibleItems: 1
	    		}, 
	    		landscape: { 
	    			changePoint:640,
	    			visibleItems: 2
	    		},
	    		tablet: { 
	    			changePoint:768,
	    			visibleItems: 3
	    		}
	    	}
	    });
	    
	});
</script>
<script type="text/javascript" src="{{ asset('/js/jquery.flexisel.js') }}"></script>
	<!---->

<!-- 底部区块 -->
@include('footer')




