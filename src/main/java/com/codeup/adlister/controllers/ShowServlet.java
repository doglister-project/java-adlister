package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ShowServlet", urlPatterns = "/show")
public class ShowServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long showAd = Long.parseLong(request.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().oneAd(showAd);


        request.setAttribute("ad", ad);
        request.setAttribute("user", DaoFactory.getUsersDao().oneUser(ad.getUserId()));
        request.getRequestDispatcher("/WEB-INF/ads/show.jsp").forward(request, response);
    }

}