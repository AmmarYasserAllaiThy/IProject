<%--
  Created by IntelliJ IDEA.
  User: ammar
  Date: 5/12/18
  Time: 5:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="New.DataBase" %>
<%@ page import="java.sql.SQLException" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <%
            String name, mail, pass, rePass;
            name = request.getParameter("name");
            mail = request.getParameter("mail");
            pass = request.getParameter("pass");
            rePass = request.getParameter("repass");

            try {
                if (pass.equals(rePass)) {
                    new DataBase().insertUser(name, mail, pass);
                    session.setAttribute("user", mail.substring(0, mail.indexOf("@")));
                    response.sendRedirect("home.jsp");
                } else {
                    //            out.println("name: " + name + " mail: " + mail + " pass: " + pass);
                    out.println("<html><body><h1>Register Error<br>Pass: " + pass + " rePass: " + rePass + "</h1></body></html>");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
