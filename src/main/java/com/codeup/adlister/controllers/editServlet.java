package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "editDeleteServlet", urlPatterns = "/edit")
public class editServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long showAd = Long.parseLong(request.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().oneAd(showAd);

        request.setAttribute("ad", ad);
        request.setAttribute("user", DaoFactory.getUsersDao().oneUser(ad.getUserId()));
        request.getRequestDispatcher("/WEB-INF/edit.jsp").forward(request, response);
    }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("edit-description");
        String title = request.getParameter("edit-title");
        Long editID = Long.parseLong(request.getParameter("ad_id"));
        DaoFactory.getAdsDao().editAd(editID, title, description);
        response.sendRedirect("/profile");
    }
}
