package app.servlets;

import app.model.ModelSingleton;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/list")
public class ListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("Model List", ModelSingleton.getInstance().getAllUserName());
        RequestDispatcher requestDispatcher =
                req.getRequestDispatcher("jspViews/list.jsp");
        requestDispatcher.forward(req, resp);
    }
}
