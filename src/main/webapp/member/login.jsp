<%-- 
    Document   : login
    Created on : 2023年12月15日, 上午9:25:08
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1> 
        <form action="/LoginDemo/checkpass.jsp">
        帳號:<input type="text" name="username" value="" /></br>
        密碼:<input type="password" name="password" value="" /></br>
        <input type="submit" value="登入" />
        <input type="submit" value="清除" />
        </form>
    </body>
</html>
