
<%@page contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gbk" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<meta name="description" content="description of your site" />
<meta name="author" content="author of the site" />
<title>����ƽ̨��̨������¼ҳ��</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.css" />

<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/toastr.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.knob.js"></script>
<!-- <script src="http://d3js.org/d3.v3.min.js"></script> -->
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
						<li><a href="../pro/index.pro">ǰ̨��ҳ</a></li>
						<li><a href="#">Link2</a></li>
						<li><a href="#">Link3</a></li>
						<li><a href="login.jsp">��¼</a></li>
					</ul>
					<h4>
						<a id="logo" href="index.jsp"> ����ƽ̨<strong>����Ա��¼</strong></a>
					</h4>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="span6 offset2">
				<div class="login">
					<form class="form-horizontal" action="check.do" method="post">
						<div class="control-group">
							<div class="controls">
								<h4>��¼</h4>
							</div>
						</div>
						<div class="control-group">
							<label for="inputEmail" class="control-label">�û��� </label>
							<div class="controls">
								<input id="inputEmail" name="aname" type="text"
									placeholder="�������û���" />
								
								
							</div>
						</div>
						<div class="control-group">
							<label for="inputPassword" class="control-label">���� </label>
							<div class="controls">
								<input id="inputPassword" name="apwd" type="password"
									placeholder="����������" />
							</div>
						</div>
						<div class="control-group">
							<label for="inputPassword" class="control-label">��֤�� </label>
							<div class="controls">
								<input id="inputvalidate" style="width:100px" name="code" type="text"
									placeholder="������֤��" />
									<a href="#"><img src="code" id="img">�����壬��һ��</a>
							</div>
							
								
						</div>
						<div class="control-group">
							<div class="controls">
								<input type="submit" class="btn" value="��¼">
								<input type="button" class="btn" value="ע��" onclick="window.location.href='add_admin.html'">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
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