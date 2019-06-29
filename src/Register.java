/*
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(urlPatterns = "createAccount")
public class Register extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name, mail, pass, rePass;
        name = request.getParameter("name");
        mail = request.getParameter("mail");
        pass = request.getParameter("pass");
        rePass = request.getParameter("re-pass");

        if (pass == rePass) {
            New.DataBase.insertUser(name, mail, pass);
            new Login();
        } else {
            response.getWriter().println("<html><body><h1>Register Error</h1></body></html>");
        }
    }
}
*/
