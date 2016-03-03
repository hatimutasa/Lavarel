<html>
	<head>
		<style>
			body {
				margin: 0;
				padding: 0;
				width: 100%;
				height: 100%;
				color: #B0BEC5;
				display: table;
				font-weight: 100;
				font-family: 'Lato';
			}

			.container {
				text-align: center;
				display: table-cell;
				vertical-align: middle;
			}

			.content {
				text-align: center;
				display: inline-block;
			}

			.title {
				font-size: 72px;
				margin-bottom: 40px;
			}
			.desc {
				font-size: 36px;
				margin-bottom: 20px;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<div class="content">
				<div class="title"> <?php echo $err; ?> </div>
				<div class="desc"> <b class='time'><?php echo $time; ?></b>秒自动跳转！ <a href="javascript:;" onclick="history.go(-1)">立即跳转</a> </div>
			</div>
			<script src="http://cdn.bootcss.com/jquery/2.1.3/jquery.min.js"></script>
			<script type="text/javascript">
				var timer = setInterval(function(){
					var num = $('.time').text();
					--num;
					$('.time').text(num);
					if (num<2) {
						clearInterval(timer);
						history.go(-1);
					};
				},1000)
			</script>
		</div>
	</body>
</html>
