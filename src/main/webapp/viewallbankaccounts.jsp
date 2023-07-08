<%@page import="com.jsp.dto.BankAccount"%>
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
         <h1>All BankAccount Detail</h1><br>
      <%AdminService adminService=new  AdminService();
      List<BankAccount> bankAccounts=adminService.viewAllBankAccounts();
      %>
      
      <table border="1px" style="border-collapse: collapse;">
      <tr>
            <th>ID</th>
            <th>Account Holder Name</th>
            <th>Account No</th>
            <th>Balance</th>
      </tr>
      
      <%for(BankAccount ba:bankAccounts)
            	{
            	%>
      <tr> 
            <td><%=ba.getId() %></td>
            <td><%=ba.getCustomer().getName() %></td>
            <td><%=ba.getAccount_no() %></td>
            <td><%=ba.getBalance()%></td>
      </tr>
     <% }%>
      
      </table>
</body>
</html>