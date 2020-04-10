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
</head>
<body>
<center>
		<div class="form-inline"><br><br><br><br>
			<form action="update" method="post">
				<input type="hidden" name="id" value="${cus.id }">
				客户姓名<input type="text" name="cusName" class="form-control" disabled="disabled" value="${cus.cusName }"><br><br>
				身份证号<input type="text"  id="cusIdCard" name="cusIdCard" class="form-control" disabled="disabled" value="${cus.cusIdCard }"><font id="idCard"></font><br><br>
				房间号<input type="text" name="roomNumber" class="form-control" value="${cus.room.roomNumber }" disabled="disabled">${error }<br><br>
				人数<input type="text" id="peopleNumber" name="peopleNumber" class="form-control" disabled="disabled" value="${cus.peopleNumber }"><font id="peopleNum"></font><br><br>
				入住日期<input type="text" name="cusDate" class="form-control" value="${cus.cusDate }" disabled="disabled"><br><br>
				预退房日期<input type="text" name="leaceDate" class="form-control" value="${cus.leaceDate }"><br><br>
				<input type="submit" class="btn btn-outline-primary"  value="修改">
			</form>
		</div>
	</center>
</body>
</html>