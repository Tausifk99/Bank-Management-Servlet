<%@page import="com.jsp.dto.BankManager"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.service.AdminService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <h1>All BankManagers Detail</h1><br>
      <%AdminService adminService=new  AdminService();
      List<BankManager> bankManagers=adminService.viewAllBankManagers();
      %>
      
      <table border="1px" style="border-collapse: collapse;">
      <tr>
            <th>ID</th>
            <th>Name</th>
      </tr>
      
      <%for(BankManager bm:bankManagers)
            	{
            	%>
      <tr> 
            <td><%=bm.getId() %></td>
            <td><%=bm.getName() %></td>
            
      </tr>
     <% }%>
      
      </table>
</body>
</html>