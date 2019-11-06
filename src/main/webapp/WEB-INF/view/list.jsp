<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 声明变量，赋值 -->
<c:set var="path" value="{pageContext.request.contextPath}" scope="page"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 引入外部css样式 -->
<link href="/resource/css/list.css" rel="stylesheet">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<title>Insert title here</title>
</head>
<body>
       
        <table>
        
            <tr> 
                 <td>编号</td>
                 <td>姓名</td>
                 <td>年龄</td>
                 <td>性别</td>
            
            </tr>
            <c:forEach items="${studentlist}" var="b">
	              	<tr> 
	                 <td>${b.sid}</td>
	                 <td>${b.sname}</td>
	                 <td>${b.sage}</td>
	                 <td>${b.ssex}</td>
	            
	           	 </tr>
            
            
            </c:forEach>
        
        
        </table>

</body>
</html>