package segment;

import utils.FileManager;

import javax.imageio.ImageIO;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/MagicWand")
public class MagicWand extends HttpServlet {

    private int imageID;
    private int x, y;
    private double tolerance;
    private double average;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        imageID = Integer.parseInt(request.getParameter("imageID"));
        x = Integer.parseInt(request.getParameter("x"));
        y = Integer.parseInt(request.getParameter("y"));
        tolerance = Double.parseDouble(request.getParameter("tolerance"));
        average = Double.parseDouble(request.getParameter("average"));

        Wand w = new Wand(tolerance);

        BufferedImage img = null;
        try {
            img = ImageIO.read(new File(FileManager.getDirPath_UserUpload((String) request.getSession().getAttribute("email")) + "/" + imageID + ".bmp"));
        } catch (IOException e) {
            e.printStackTrace();
        }

        w.process(img, x, y);
        String responseText = getResponseString(w.getSelection()) + "|" + getResponseString(w.getBoundry()) + "|" + w.getAverage() + "|" + (int) w.getCenter().getX() + "," + (int) w.getCenter().getY();

        if (average != -1 && Math.abs(w.getAverage() - average) / 255 > 0.1) {
            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("||-1");
            response.getWriter().flush();
        } else {
            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(responseText);
            response.getWriter().flush();
        }
    }

    private String getResponseString(ArrayList<String> strArrayList) {
        String response = "";
        for (String str : strArrayList) {
            response += str + ",";
        }

        return response.substring(0, response.length() - 1);
    }
}