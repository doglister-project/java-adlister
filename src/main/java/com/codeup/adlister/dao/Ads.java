package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    List<Ad> userAds(Long id);

    List<Ad> search(String input);

    Ad oneAd(long id);

    void editAd(long id, String title, String description);

    void deleteAd(long id);


}
