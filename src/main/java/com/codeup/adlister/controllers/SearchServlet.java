//package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//@WebServlet(name = "SearchServlet", urlPatterns = "/search")
//public class SearchServlet extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String search = request.getParameter("search");
//
//        if (search != null) {
//            request.setAttribute("search", DaoFactory.getAdsDao().search(search));
//            request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
//        } else {
//            response.sendRedirect("/login");
//        }
//    }

//
//}

