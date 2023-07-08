<%@page import="com.jsp.service.CustomerService"%>
<%@page import="com.jsp.dto.Customer"%>
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
       int id=(int)httpSession.getAttribute("cid");
       CustomerService customerService=new CustomerService();
       Customer c=customerService.getCustomerById(id);
       %>
       
       <table border="1px" style="border-collapse: collapse;">
      <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Status</th>
            <th>Pan_No</th>
      </tr>
      
      <tr>
            <td><%=c.getId() %></td>
            <td><%=c.getName() %></td>
            <td><%=c.getStatus() %></td>
            <td><%=c.getPan().getPan_no()%></td>
      
      </tr>
      
      </table>
</body>
</html>