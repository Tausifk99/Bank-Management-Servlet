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
         String cname=(String)httpSession.getAttribute("cname");
         %>
         <h1 style="color: red"><%=cname %> Welcome To BankAccount Portal</h1>
         <form action="bankAccountController" method="post">
                <input type="submit" value="Get Account Details" name="getbyid"><br><br>
                <input type="submit" value="Delete Account" name="delete"><br><br>
                <input type="submit" value="Deposit Money" name="deposit"><br><br>
                <input type="submit" value="Widthraw Money" name="withdraw"><br><br>
                <input type="submit" value="Transfer Money" name="transfer"><br><br>
                <input type="submit" value="Logout" name="logout"><br><br>        
                                       
         </form>

</body>
</html>