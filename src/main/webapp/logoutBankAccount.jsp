<%@page import="java.io.PrintWriter"%>
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
         
         httpSession.invalidate();
         response.setContentType("text/html");
         PrintWriter printWriter=response.getWriter();
         printWriter.write("<h1 style='color:red;'>You Have Been Logged out</h1>");
         RequestDispatcher requestDispatcher=request.getRequestDispatcher("welcome.jsp");
         requestDispatcher.forward(request, response);
        %>
</body>
</html>