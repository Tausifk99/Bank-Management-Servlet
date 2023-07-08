<%@page import="com.jsp.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.service.BankManagerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <h1>All Customers Detail</h1><br>
      <%BankManagerService bankManagerService=new  BankManagerService();
      List<Customer> customers=bankManagerService.viewAllCustomer();
      %>
      
      <table border="1px" style="border-collapse: collapse;">
      <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Status</th>
            <th>Pan_No</th>
            <th>Approve Customer</th>
      </tr>
      
      <%for(Customer c:customers)
            	{
            	%>
      <tr> 
            <td><%=c.getId() %></td>
            <td><%=c.getName() %></td>
            <td><%=c.getStatus() %></td>
            <td><%=c.getPan().getPan_no()%></td>
            <td><a href="approveCustomer?cid=<%=c.getId()%>">ApproveCustomer</a></td>
      </tr>
     <% }%>
      
      </table>
</body>
</html>