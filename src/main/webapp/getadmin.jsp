<%@page import="com.jsp.dto.Admin"%>
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
       <%HttpSession httpSession=request.getSession();
       int id=(int)httpSession.getAttribute("aid");
       AdminService adminService=new AdminService();
       Admin a=adminService.getAdminById(id);
       %>
       
       <table border="1px" style="border-collapse: collapse;">
      <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Password</th>
      </tr>
      
      <tr>
            <td><%=a.getId() %></td>
            <td><%=a.getEmail() %></td>
            <td><%=a.getPassword() %></td>      
      </tr>
      
      </table>
</body>
</html>