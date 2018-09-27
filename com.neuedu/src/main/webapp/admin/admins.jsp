<%@page contentType="text/html; charset=gbk" pageEncoding="gbk" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="gbk" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<meta name="description" content="description of your site" />
<meta name="author" content="author of the site" />
<title>电商平台后台首页</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/toastr.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.knob.js"></script>
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="js/jquery.sparkline.min.js"></script>
<script src="js/toastr.js"></script>
<script src="js/jquery.tablesorter.min.js"></script>
<script src="js/jquery.peity.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/gcal.js"></script>
<script src="js/setup.js"></script>
</head>
<body>
	<div id="in-nav">
		<div class="container">
			<div class="row">
				<div class="span12">
					<ul class="pull-right">
						<li><a href="#">链接1</a></li>
					<li><a href="#">链接2</a></li>
					<li><a href="#">链接3</a></li>
					<li><a href="login.html">登录</a></li>
					</ul>
					<a id="logo" href="index.html">
						<h4>
							电商平台后台<strong>管理</strong>
						</h4>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div id="in-sub-nav">
		<div class="container">
			<div class="row">
				<div class="span12">
					<ul>
					<li><a href="index.html" class="active"><i class="batch home"></i><br />主页</a></li>
					<li><span class="label label-important pull-right">08</span><a
						href="admins.jsp"><i class="batch stream"></i><br />管理员列表</a></li>
					<li><a href="users.html"><i class="batch users"></i><br />用户列表</a></li>
					<li><a href="categories.html"><i class="batch forms"></i><br />类别列表</a></li>
					<li><a href="products.html"><i class="batch quill"></i><br />商品列表</a></li>
					<li><span class="label label-important pull-right">04</span><a
						href="orders.html"><i class="batch plane"></i><br />订单列表</a></li>
					<li><a href="anothers.html"><i class="batch calendar"></i><br />其它扩展功能</a></li>
					<li><a href="settings.html"><i class="batch settings"></i><br />系统设置</a></li>
				</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="page">
		<div class="page-container">
			<div class="container">
				<div class="row">
					<div class="span12">
						<a href="#newUserModal" data-toggle="modal" class="btn pull-right">添加管理员</a>
						<h4 class="header">管理员列表</h4>
						<table class="table table-striped sortable">
							<thead>
								<tr>
									<th>管理员ID</th>
									<th>管理员用户名</th>
									<th>密码</th>

								</tr>
							</thead>
							<tbody>
							
							
							<c:forEach items="${admins }" var="admin">
								<tr>
									<td>${admin.id }</td>
									<td>${admin.aname }</td>
									<td>${admin.apwd}</td>
									
									<td>
										<div class="btn-group">
											<button class="btn">操作</button>
											<button data-toggle="dropdown" class="btn dropdown-toggle">
												<span class="caret"></span>
											</button>
											<ul class="dropdown-menu">
												<li><a href="#">编辑用户名</a> <a href="update_admin.html">修改</a> <a
													href="#">删除</a></li>
											</ul>
										</div>
									</td>
								</tr>
								
							</c:forEach>	
							
							</tbody>
						</table>
						<div class="pagination pagination-centered">
							<ul>
								<li class="disabled"><a href="#">&laquo;</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div id="newUserModal" class="modal hide fade">
				<div class="modal-header">
					<button type="button" data-dismiss="modal" aria-hidden="true"
						class="close">&times;</button>
					<h3>新建管理员</h3>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" action="add.do" method="post">
						<div class="control-group">
							<label for="inputEmail" class="control-label">账号</label>
							<div class="controls">
								<input id="inputEmail" type="text" name="aname" placeholder="请输入用户名" />
							</div>
						</div>
						<div class="control-group">
							<label for="inputCurrentPassword" class="control-label">密码
							</label>
							<div class="controls">
								<input id="inputCurrentPassword" name= "apwd" type="password"
									placeholder="请输入密码" />
							</div>
						</div>
						<div class="modal-footer">
							<a href="#" data-dismiss="modal" class="btn">关闭</a>
							<input type="submit"  class="btn btn-primary" value="添加" />
						</div>
					</div>
				</form>
				
				<form action=""></form>
				
			</div>
		</div>
	</div>
	<footer>
		<div class="container">
			<div class="row">
				<div class="span12">
					<p class="pull-right">版权所有&nbsp;&nbsp;&nbsp;可以翻版</p>
					<p>&copy; Copyright 2018 Somnus</p>
				</div>
			</div>
		</div>
	</footer>
</body>
<script src="js/d3-setup.js"></script>
<script>
	protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
	address = protocol + window.location.host + window.location.pathname
			+ '/ws';
	socket = new WebSocket(address);
	socket.onmessage = function(msg) {
		msg.data == 'reload' && window.location.reload()
	}
</script>
</html>