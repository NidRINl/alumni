package com.university.alumni.client.sevlet;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

/**
 * Created by Jason on 2016/11/21.
 */
public class CheckcodeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BufferedImage bufferedImage = new BufferedImage(68, 22, BufferedImage.TYPE_3BYTE_BGR);
        Graphics graphics = bufferedImage.getGraphics();
        Color color = new Color(200, 150, 255);
        graphics.getColor();
        graphics.setColor(color);
        graphics.fillRect(0, 0, 68, 22);
        char[] base = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
        Random random = new Random();
        int len = base.length, index;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < 4; i++) {
            index = random.nextInt(len);
            graphics.setColor(new Color(random.nextInt(88), random.nextInt(188), random.nextInt(255)));
            graphics.drawString(base[index] + "", (i * 15) + 3, 18);
            stringBuffer.append(base[index]);
        }
        req.getSession().setAttribute("piccode", stringBuffer.toString());
        ImageIO.write(bufferedImage, "JPG", resp.getOutputStream());
    }

}
