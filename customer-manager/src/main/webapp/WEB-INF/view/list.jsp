<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%	String path = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/index_work.css" />
<link href="<%=request.getContextPath()%>/css/index_work.css"
	rel="stylesheet">
<!-- 引入样式 -->
<link href="/resource/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>

<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript">
function add() {
	location.href="toAdd";
}

function update(id) {
	location.href="toUpdate?id="+id;
}

function del(id) {
	location.href="delete?id="+id;
}
</script>
</head>
<body>
<form action="list" method="post">
	客户姓名<input type="text" name="name"  value="${vo.name }">
	房间编号<input type="text" name="roomNumber"  value="${vo.roomNumber }">
	身份证号<input type="text" name="idCard" value="${vo.idCard }">
	入住日期<input type="date" name="cusDate"  value="${vo.cusDate }" onclick="WdatePicker()" autocomplete="off">
			<input type="submit" value="查询"  class="btn btn-outline-primary">
		</form>
	<table class="table">
		<tr>
			<td>客房姓名</td>
			<td>身份证号</td>
			<td>入住人数</td>
			<td>入住日期</td>
			<td>房间编号</td>
			<th>单价</th>
			<td>总价</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${info.list }" var="cus">
			<tr>
				<td>${cus.cusName }</td>
					<td>${cus.cusIdCard }</td>
					<td>${cus.peopleNumber }</td>
					<td><fmt:formatDate value="${cus.cusDate }"
							pattern="yyyy-MM-dd" /></td>
					<td>${cus.room.roomNumber }</td>
					<td>${cus.room.price }</td>
					<td>${cus.totalPrice }</td>
					<td><button class="btn btn-outline-danger" onclick="del(${cus.id})">退房</button>
					<button class="btn btn-outline-warning" onclick="update(${cus.id})">延长</button></td>
			</tr>
		</c:forEach>

		<tr align="center">
			<td colspan="10">当前是${info.pageNum}/${info.pages }页--共${info.total }条数据
				<a href="list?pageNum=1">首页</a> <a
				href="list?pageNum=${info.prePage }">上一页</a> <a
				href="list?pageNum=${info.nextPage }">下一页</a> <a
				href="list?pageNum=${info.pages }">尾页</a>
			</td>
		</tr>
	</table>
	<button class="btn btn-outline-primary" onclick="add()">客户订房</button>
</body>
</html>