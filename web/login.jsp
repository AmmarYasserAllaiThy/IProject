<%--
  Created by IntelliJ IDEA.
  User: ammar
  Date: 5/12/18
  Time: 5:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="New.DataBase" %>
<%@ page import="java.sql.SQLException" %>
<html>
    <body>
        <%
            String mail, pass;
            mail = request.getParameter("mail");
            pass = request.getParameter("pass");
            HttpSession loggedUser;
            DataBase db = new DataBase();

            try {
                if (db.check(mail, pass)) {
                    loggedUser = request.getSession();
                    loggedUser.setAttribute("user", mail.substring(0, mail.indexOf("@")));
                    response.addCookie(new Cookie("mail", mail)); //Email
                    response.addCookie(new Cookie("pass", pass)); //Pass

                    response.sendRedirect("home.jsp");
                } else {
                    out.println("<html><body><h1>Login Error<br>mail: " + mail + "<br>pass: " + pass + "</h1></body></html>");
                }
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        %>
    </body>
</html>
