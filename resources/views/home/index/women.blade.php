<!-- 头部公共区块 -->
@include('header')

	<!--content-->
	<div class="content">
		<div class="container">
			<div class="  col-m-on">
				<!---->
				<div class="in-line">
					<div class="para-all-in">
						<h3>LATEST  ARRIVALS</h3>
						<p>Check our all latest products in this section.</p>
					</div>
					<div class="lady-on">

					<!-- 商品区块	 -->

					@for($vo=1;$vo<19;$vo++)

						<div class="col-md-4 you-women <if condition='$vo%3 eq 0' >para-grid</if>">
							<a href="{{ url('/index/single') }}"><img class="img-responsive pic-in" src="/images/pi4.jpg" alt=" " ></a>
							<div class=" you-two">
								<span>15<label>%</label></span>
							<small>off</small>
							</div>
							<p>Premium Denim Women's Hidden</p>
							<span>$179.00  | <label class="cat-in"> </label> <a href="#">Add to Cart </a></span>
						</div>

					@endfor				
					
					<!-- 商品区块结束 -->
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<!---->
			<div class="lady-in-on">
			<div class="buy-an">
						<h3>OTHER PRODUCTS</h3>
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