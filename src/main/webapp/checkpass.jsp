<%-- 
    Document   : checkpass
    Created on : 2023年12月15日, 上午9:49:56
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%!
            HttpSession session;
            // 123
            // 使用文字宣告做為預設密碼
            String [ ] users = { "user01", "user02", "user03"};
            String [ ] pass ={ "123", "456", "789"};
            // Dictionary 字典 key --> value(user01, 123)
            HashMap<String,String> userMap = new HashMap<>();
             // 方法1
            public boolean checkMap( String u, String p)
            {
                if( userMap.containsKey(u))
                {
                    if (userMap.get(u).equals(p))
                    {
                        return true;
                    }
                }
                return false;
            }
            // 123
        %>
        
        
         <%
            userMap.put("user01","123");
            userMap.put("user02","456");
            userMap.put("user03","789");
            userMap.put("abc@gmail.com","111");
            
         // 取出 Login表單送出的帳密
        String user = request.getParameter("username");
        String pass = request.getParameter("password");    
         // 是否異常
         if (user == null || pass == null) {
          // 重新登入
            response.sendRedirect("/LoginDemo/member/login.jsp"); 
         }
          // 檢查是否正確(帳密)
          if( checkMap(user,pass))
          {
            session = request.getSession();
            session.setAttribute("username", user);
            session.setAttribute("isLogin", true);
            response.sendRedirect("/LoginDemo/member/page.jsp");
          }
          // 123
          else 
          {
            response.sendRedirect("/LoginDemo/member/nologin.html");
          }
        %>
        
        
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
