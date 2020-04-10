<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%	String path = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/index_work.css" />
<link href="<%=request.getContextPath()%>/css/index_work.css" rel="stylesheet">
<!-- 引入样式 -->
<link href="/resource/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>

<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript">
	function valid() {
		var idCard  = $("#cusIdCard").val()
		var peopleNumber  = $("#peopleNumber").val()
		if (idCard.length != 18) {
			$("#idCard").text("身份证号不合法")
			return;
		}
		if (peopleNumber > 4) {
			$("#peopleNum").text("人数不可超过4人")
			return ;
		}
		$("form").submit();
	}
</script>
</head>
<body>
<center>
		<div class="form-inline"><br><br><br><br>
			<form action="add" method="post">
				客户姓名<input type="text" name="cusName" class="form-control" value="${cus.cusName }"><br><br>
				身份证号<input type="text"  id="cusIdCard" name="cusIdCard" class="form-control" value="${cus.cusIdCard }"><font id="idCard"></font><br><br>
				房间号<input type="text" name="roomNumber" class="form-control" value="${roomNumber }">${error }<br><br>
				人数<input type="text" id="peopleNumber" name="peopleNumber" class="form-control" value="${cus.peopleNumber }"><font id="peopleNum"></font><br><br>
				入住日期<input type="text" name="cusDate" class="form-control" value="${cus.cusDate }"><br><br>
				预退房日期<input type="text" name="leaceDate" class="form-control" value="${cus.leaceDate }"><br><br>
				<input type="button" class="btn btn-outline-primary" onclick="valid()" value="保存">
			</form>
		</div>
	</center>
</body>
</html>