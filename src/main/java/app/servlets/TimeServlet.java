package app.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet("/time")
public class TimeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");

        PrintWriter printWriter = resp.getWriter();
        printWriter.println("<html>");
        printWriter.println("<head>");
        printWriter.println("</head>");
        printWriter.println("<body>");
        printWriter.println("<h1>");
        Date d = new Date();
        printWriter.println(d.toLocaleString());
        printWriter.println("</h1>");
        printWriter.println("</body>");
        printWriter.println("</html>");
    }
}
