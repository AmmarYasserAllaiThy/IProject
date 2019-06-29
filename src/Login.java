/*
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(urlPatterns = "login")
public class Login extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String mail, pass;
        HttpSession loggedUser;
        mail = request.getParameter("mail");
        pass = request.getParameter("pass");

        if (New.DataBase.check(mail, pass)) {
            loggedUser = request.getSession();
            loggedUser.setAttribute("user", mail);
            response.sendRedirect("home.jsp");
        } else {
            response.getWriter().println("<html><body><h1>Login Error</h1></body></html>");
        }
    }
}
*/
