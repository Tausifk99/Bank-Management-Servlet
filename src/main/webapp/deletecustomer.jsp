<%@page import="java.io.PrintWriter"%>
<%@page import="javax.swing.plaf.metal.MetalBorders.Flush3DBorder"%>
<%@page import="com.jsp.dto.Customer"%>
<%@page import="com.jsp.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     
     <h3>Are You Sure You Want To Delete Account</h3><br>
     <a href="deleteCustomer"><button name="yes">YES</button></a><br><br>
     <a href="customer.jsp"><button name="no">NO</button></a><br><br>
       
</body>
</html>