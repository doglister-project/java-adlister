package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "RandomAdServlet", urlPatterns = "/random_show")
public class RandomAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ad> ads = DaoFactory.getAdsDao().all();
        int randomId = (int)(Math.random() * ads.size());

        request.setAttribute("ad", ads.get(randomId));

        request.setAttribute("user", DaoFactory.getUsersDao().oneUser(ads.get(randomId).getUserId()));
        request.getRequestDispatcher("/WEB-INF/ads/show.jsp").forward(request, response);
    }

}