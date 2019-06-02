<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<jsp:useBean id="db" class="Bean.DBBean" scope="page" />
<%
    request.setCharacterEncoding("UTF-8");
    String username=(String)request.getParameter("username");
    String password=(String)request.getParameter("password");//取出login.jsp的值
    
    if(username.equals(db.getName("奈奈")))
    {
        
        if(password.equals("170609")){
            response.sendRedirect("success.jsp");
        }
        else{
            out.print("<script language='javaScript'> alert('密码错误');</script>");
            response.setHeader("refresh", "0;url=login.jsp");
        }
    }
    else 
    {
        out.print("<script language='javaScript'> alert('账号错误');</script>");
        response.setHeader("refresh", "0;url=login.jsp");
    }
    
%>
</body>
</html>
