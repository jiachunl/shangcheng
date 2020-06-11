package com.itdr.utils;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Random;

public class CodeUtils {
private static final String STRS = "qwertyuiopasdfghjklzxcvbnm1234567890";
    private static final int STR_LENGTH = 4;
    private static final int WIDTH = 100;
    private static final int HEIGHT = 80;
    private static final int WIDTH_FONT = 60;
    private static final int HEIGHT_FONT = 40;
    private static final int WIDTH_SPACE = 70;
    public static String getStrs(){
        char[] arr = new char[STR_LENGTH];
        Random random = new Random();
        for (int i = 0; i < STR_LENGTH; i++) {
            arr[i] = STRS.charAt(random.nextInt(STRS.length()));
        }
        return new String(arr);
    }

    public static BufferedImage getImg(String str){
        BufferedImage image = new BufferedImage(WIDTH,HEIGHT,BufferedImage.TYPE_INT_RGB);
        Graphics graphics = image.getGraphics();
        graphics.setColor(Color.white);
        graphics.fillRect(0,0,WIDTH,HEIGHT);
//        Random random = new Random();
        for (int i = 0; i < str.length(); i++) {
            graphics.setColor(Color.black);
//            System.out.println("=========="+str.charAt(i));
//            graphics.drawLine(0,0,WIDTH-random.nextInt(150),HEIGHT-random.nextInt(150));
            graphics.drawString(String.valueOf(str.charAt(i)),(150-WIDTH_FONT-WIDTH_SPACE)*i,HEIGHT_FONT);
//            graphics.drawString(String.valueOf(str.charAt(i)),(WIDTH_FONT+WIDTH_SPACE)*i,HEIGHT_FONT);
//            graphics.drawString(String.valueOf(str.charAt(i)),(WIDTH_FONT+WIDTH_SPACE)*i,0);
//            graphics.drawString(String.valueOf(str.charAt(i)),WIDTH_FONT,HEIGHT_FONT);
        }
        return image;
    }

}
