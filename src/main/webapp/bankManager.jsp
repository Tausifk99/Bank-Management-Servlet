<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
         <%  HttpSession httpSession =request.getSession(); 
       String bmname=(String)httpSession.getAttribute("bmname");
       %>
        <h1 style="color: red"><%=bmname %> Welcome To BankManager Portal</h1>
         <form action="bankManagerController" method="post">
                <input type="submit" value="Get Account" name="getbyid"><br><br>
                <input type="submit" value="Delete Account" name="delete"><br><br>
                <input type="submit" value="Update Account" name="update"><br><br>
                <input type="submit" value="View All Customers" name="viewallcustomers"><br><br>
                <input type="submit" value="View All Approved Customers" name="viewallapprovedcustomers"><br><br>
                <input type="submit" value="View All UnApproved Customers" name="viewallunapprovedcustomers"><br><br> 
                <input type="submit" value="Logout" name="logout"><br><br>        
                                      
         </form>
</body>
</html>