<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <h4 style="color: blue;">Goto OpenAccount If You Dont Have Account</h4>
      <a href="openAccount"><button>OpenAccount</button></a><br>
      <h4 style="color: blue;">Login Here If You Already Have Account</h4><br>
     <form action="bankAccountLogin" method="post">
    Enter Account_ID : <input type="number" name="id" min="1" required="required"><br><br>
    <input type="submit" value="Login">
     </form>
</body>
</html>