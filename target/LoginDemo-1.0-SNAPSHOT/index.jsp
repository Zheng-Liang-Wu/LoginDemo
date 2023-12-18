<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%!
        HttpSession session;
    %>
    <%
        session=request.getSession();
    %>
     
    <body>
        <h5>使用者資訊</h5>
        瀏覽器版本: <%=request.getHeader("User-Agent") %> <br>
        瀏覽器語系: <%=request.getHeader("Accept-Language")%> <br>
        使用者Ip: <%= request.getRemoteAddr() %> <br>
        Tomcat IP: <%= request.getLocalAddr() %>  <br>

        <h1>會員登入系統:seasion id:<%= session.getId() %></h1>
        <a href="/LoginDemo/member/login.jsp">會員登入</a>
    </body>
</html>
