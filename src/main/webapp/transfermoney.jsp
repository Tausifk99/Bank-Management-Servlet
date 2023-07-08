<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <form action="transfermoney" method="post">
      Enter Amount Which You Have To Transfer : <input type="number" name="transferammount" min="1"><br><br>
      Enter Receiver Account Id For Whom You Have To Transfer Money : 
      <input type="number" name="reciever_id" min="1"><br><br>
      <input type="submit" value="Transfer Money">
      </form>
</body>
</html>