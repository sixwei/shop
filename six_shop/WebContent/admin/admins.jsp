<%@page contentType="text/html; charset=gbk" pageEncoding="gbk" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="gbk" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<meta name="description" content="description of your site" />
<meta name="author" content="author of the site" />
<title>����ƽ̨��̨��ҳ</title>
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
						<li><a href="#">����1</a></li>
					<li><a href="#">����2</a></li>
					<li><a href="#">����3</a></li>
					<li><a href="login.html">��¼</a></li>
					</ul>
					<a id="logo" href="index.html">
						<h4>
							����ƽ̨��̨<strong>����</strong>
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
					<li><a href="index.html" class="active"><i class="batch home"></i><br />��ҳ</a></li>
					<li><span class="label label-important pull-right">08</span><a
						href="admins.jsp"><i class="batch stream"></i><br />����Ա�б�</a></li>
					<li><a href="users.html"><i class="batch users"></i><br />�û��б�</a></li>
					<li><a href="categories.html"><i class="batch forms"></i><br />����б�</a></li>
					<li><a href="products.html"><i class="batch quill"></i><br />��Ʒ�б�</a></li>
					<li><span class="label label-important pull-right">04</span><a
						href="orders.html"><i class="batch plane"></i><br />�����б�</a></li>
					<li><a href="anothers.html"><i class="batch calendar"></i><br />������չ����</a></li>
					<li><a href="settings.html"><i class="batch settings"></i><br />ϵͳ����</a></li>
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
						<a href="#newUserModal" data-toggle="modal" class="btn pull-right">���ӹ���Ա</a>
						<h4 class="header">����Ա�б�</h4>
						<table class="table table-striped sortable">
							<thead>
								<tr>
									<th>����ԱID</th>
									<th>����Ա�û���</th>
									<th>����</th>

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
											<button class="btn">����</button>
											<button data-toggle="dropdown" class="btn dropdown-toggle">
												<span class="caret"></span>
											</button>
											<ul class="dropdown-menu">
												<li><a href="#">�༭�û���</a> <a href="update_admin.html">�޸�</a> <a
													href="#">ɾ��</a></li>
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
					<h3>�½�����Ա</h3>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" action="add.do" method="post">
						<div class="control-group">
							<label for="inputEmail" class="control-label">�˺�</label>
							<div class="controls">
								<input id="inputEmail" type="text" name="aname" placeholder="�������û���" />
							</div>
						</div>
						<div class="control-group">
							<label for="inputCurrentPassword" class="control-label">����
							</label>
							<div class="controls">
								<input id="inputCurrentPassword" name= "apwd" type="password"
									placeholder="����������" />
							</div>
						</div>
						<div class="modal-footer">
							<a href="#" data-dismiss="modal" class="btn">�ر�</a>
							<input type="submit"  class="btn btn-primary" value="����" />
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
					<p class="pull-right">��Ȩ����&nbsp;&nbsp;&nbsp;���Է���</p>
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