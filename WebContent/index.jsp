<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>鸡年大吉!</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="utf-8">
<!-- 引入 Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
<!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
<!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
<style>
* {
	margin: 0px;
	padding: 0px;
}

body {
	
}

#cj {
	width: 100%;
	overflow: hidden;
	position: absolute;
}

.item {
	padding: 5px 10px;
	margin: 9px;
	color: orange;
	display: inline-block;
	font-family: "隶书";
	box-shadow: 1px 1px 10px white, -1px -1px 10px white;
	background: #FF0033;
	font-size: 16px;
	height: 100px;
	border-radius: 5%;
}

.active {
	color: red;
	background: #F6E8D0;
	box-shadow: 2px 2px 9px #FFFE8C, -2px -2px 9px #FFFE8C;
}

.money {
	border-bottom: 1px yellow solid;
	margin-bottom: 10px;
	padding: 5px 0px;
	border-radius: 50%;
}

.mean {
	display:inline;
}



</style>

</head>
<body>

	<form action="submit.do" method="get">
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">恭喜中奖!</h4>
					</div>
					<div class="modal-body">
						系统将发送您的信息到心累的邮箱,<br/>心累将根据邮箱内容为你发红包! <input class='form-control'
							name='qqno' type="text" placeholder="请填写QQ号">

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">太少了,放弃</button>
						<button type="submit" class="btn btn-primary">提交</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
	</form>
	
	<!-- 模态框（Modal） -->
		<div class="modal fade" id="tip" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel1" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel1">准备抽奖!</h4>
					</div>
					<div class="modal-body">
						点击任意红包开始抽奖!
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">好的开始!</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>

	<div id='background'>
		<img src="jinian.png" width="100%"  />
	</div>

	<div id="cj">

		<div class='row col-lg-6 text-center'>
			<div index="0" class='item active col-sm-3'>
				<p class='money' align='center'>1.68</p>
				<p class='mean' align='center'>一路888</p>

			</div>
			<div index="1" class='item col-sm-3'>
				<p class='money' align='center'>2.33</p>
				<p class='mean' align='center'>笑口常开</p>

			</div>

			<div index="2" class='item  col-sm-3'>
				<p class='money' align='center'>0.88</p>
				<p class='mean' align='center'>财源滚滚</p>

			</div>
			<div index="7" class='item col-sm-3'>
				<p class='money' align='center'>3.65</p>
				<p class='mean' align='center'>幸福365</p>

			</div>
			<div index="8" class='item col-sm-3'>
				<p class='money' align='center'>88.88</p>
				<p class='mean' align='center'>财源滚滚</p>

			</div>
			<div index="3" class='item col-sm-3'>
				<p class='money' align='center'>18.18</p>
				<p class='mean' align='center'>要发要发</p>

			</div>
			<div index="6" class='item col-sm-3'>
				<p class='money' align='center'>23.33</p>
				<p class='mean' align='center'>笑口常开</p>

			</div>
			<div index="5" class='item col-sm-3'>
				<p class='money' align='center'>20.17</p>
				<p class='mean' align='center'>新年快乐</p>

			</div>
			<div index="4" class='item col-sm-3'>
				<p class='money' align='center'>36.5</p>
				<p class='mean' align='center'>幸福365</p>

			</div>


		</div>

	</div>
	<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
	<script src="js/jquery.js"></script>
	<!-- 包括所有已编译的插件 -->
	<script src="js/bootstrap.min.js"></script>
</body>

<script>
	function setDomCenter(dom) {
		var h = $(dom).height();
		var w = $(dom).width();
		var wh = $(window).height();
		var ww = $(window).width();
		var y = (wh - h) / 2;
		var x = (ww - w) / 2;
		$(dom).css("top", y);
	}

	function setDomCenter1(dom) {
		var h = $(dom).height();
		var w = $(dom).width();
		var wh = $(window).height();
		var ww = $(window).width();
		var y = (wh - h) / 2 - 440;
		var x = (ww - w) / 2;
		$(dom).css("bottom", -60);
		$(dom).css("left", x);
	}
	(function() {
		var dom = $("#cj").get(0);
		setDomCenter(dom)

		setDomCenter1($("#btn"));

		$("#tip").modal('show');
		
		$("#cj div div").click(function(){
			
			startCj();
		});
		
		$("#background img").attr("height",$(window).height()+"px")
		//alert($("#background img").attr("height"));

	})()

	var p, p2, p3, p4;
	var i = 0;
	var quan = 0;
	var circle = 7;
	var lucknum;
	function startCj() {

		$.getJSON("server.jsp", function(res) {
			if (res.num != null) {
				lucknum = res.num;
				console.log("GetLuckNum:" + lucknum);

			} else if (res.flag == 7) {
				alert('抽过了,明年吧!')
				clearInterval(p)
			}

			else {
				alert("服务器异常,刷新重试!");
			}

		});

		p = setInterval(function() {
			$("#cj div div[index=" + i + "]").removeClass("active");
			var count = i;
			if (count == circle) {
				count = 0;
				i = 0;
				quan = quan + 1;
			} else {
				count = i + 1;
				i = i + 1;
			}
			$("#cj div div[index=" + count + "]").addClass("active");
			if (quan != 0 && quan % 3 == 0) {
				circle = 8;
			} else {
				circle = 7;
			}
			if (quan == 7) {
				clearInterval(p)
				console.log("It s Stop!")
				quan = 0;
				p2 = setInterval(function() {
					$("#cj div div[index=" + i + "]").removeClass("active");
					var count = i;
					if (count == circle) {
						count = 0;
						i = 0;
						quan = quan + 1;
					} else {
						count = i + 1;
						i = i + 1;
					}
					$("#cj div div[index=" + count + "]").addClass("active");
					if (quan != 0 && quan % 3 == 0) {
						circle = 8;
					} else {
						circle = 7;
					}
					if (quan == 5) {
						clearInterval(p2)
						console.log("It s Stop2!")
						quan = 0;
						p3 = setInterval(function() {
							$("#cj div div[index=" + i + "]").removeClass(
									"active");
							var count = i;
							if (count == circle) {
								count = 0;
								i = 0;
								quan = quan + 1;
							} else {
								count = i + 1;
								i = i + 1;
							}
							$("#cj div div[index=" + count + "]").addClass(
									"active");
							if (quan != 0 && quan % 3 == 0) {
								circle = 8;
							} else {
								circle = 7;
							}
							if (quan == 1) {
								clearInterval(p3)
								console.log("It s Stop3!")
								quan = 0;
								stopOnNum(lucknum);
							}
						}, 200)
					}
				}, 70)
			}
		}, 40)

	}

	function stopOnNum(num) {
		if (num == null) {
			num = 2;
		}
		p4 = setInterval(function() {
			$("#cj div div[index=" + i + "]").removeClass("active");
			var count = i;
			if (count == num) {
				console.log("i=" + i + ";num=" + num)
				clearInterval(p4)
				setTimeout(function() {
					console.log("It s Stop4!");
					$("#myModal").modal('show');
				}, 200)
			} else {
				count = i + 1;
				i = i + 1;
			}
			$("#cj div div[index=" + count + "]").addClass("active");

		}, 500)

	}
</script>

</html>