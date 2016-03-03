<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Fashion Store A Fashion Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<link href="{{ asset('/css/bootstrap.css') }}" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="{{ asset('/js/jquery.min.js') }}"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="{{ asset('/css/style.css') }}" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashion Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Libre+Baskerville:400,700,400italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//fonts-->
</head>
<body> 
	  <!--header-->
		<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="header-grid">
					<ul>
						<li  ><a href="{{ url('/index/articles') }}" class="scroll">Articles</a></li>
						<li><a href="{{ url('/index/contact') }}" class="scroll">Contact  </a></li>
						<li><a href="{{ url('/index/privacy') }}" class="scroll">Privacy</a></li>
						<li><a href="#" class="scroll">Terms</a></li>						
					</ul>
				</div>
				<div class="header-grid-right">
					<a href="#" class="sign-in">Sign In</a>
					<form>
						<input type="text" value="Username" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
						<input type="text" value="Password" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
						<input type="submit" value="Go" >
					</form>
					<label>|</label>
					<a href="index.php?m=index&c=index&a=signup" class="sign-up">Sign Up</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="container">
		<div class="header-bottom">			
				<div class="logo">
					<a href="{{ url('/') }}"><img src="/images/logo.png" alt=" " ></a>
				</div>
					<div class="ad-right">
					<img class="img-responsive" src="/images/ad.png" alt=" " >
				</div>
				<div class="clearfix"> </div>
			</div>	
			<div class="header-bottom-bottom">
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li @if($action=='index') @{{ class="active" }} @endif ><a href="{{ url('/') }}">首页 </a></li>
						@foreach($menuData as $val)

							<li><a href="{{ '/index/lists?a='.$val['cid'] }}" >{{ $val['c_name'] }}</a></li>

						@endforeach
						<!-- <li @if($action=='index') @{{ class="active" }} @endif ><a href="{{ url('/') }}">HOME </a></li>
						<li @if($action=='men') @{{ class="active" }} @endif ><a href="{{ url('/index/men') }}" >MEN</a></li>
						<li @if($action=='women') @{{ class="active" }} @endif ><a href="{{ url('/index/women') }}" >WOMEN</a></li>
						<li @if($action=='collection') @{{ class="active" }} @endif ><a href="{{ url('/index/collection') }}" >COLLECTION</a></li>
						<li @if($action=='collection') @{{ class="active" }} @endif ><a href="{{ url('/index/collection') }}" >STORE PRODUCTS</a></li>
						<li @if($action=='collection') @{{ class="active" }} @endif ><a href="{{ url('/index/collection') }}" >LATEST  PRODUCT</a></li> -->
					</ul>	
				<script>
					$("span.menu").click(function(){
						$(".top-nav ul").slideToggle(500, function(){
						});
					});
				</script>
					
					<div class="clearfix"> </div>					
				</div>
				<div class="search">
					<form>
						<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
						<input type="submit"  value="">
					</form>
				</div>
				<div class="clearfix"> </div>
				</div>
		</div>
	</div>