package com.university.alumni.client.sevlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String piccode = (String) req.getSession().getAttribute("piccode");
        String checkcode = req.getParameter("checkcode");
        checkcode = checkcode.toUpperCase();
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        if (checkcode.equals(piccode)) {
            out.println("验证码输入正确！");
        } else {
            out.println("验证码输入错误！");
        }
        out.flush();
        out.close();

    }
}
