package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);






    boolean validateUsername(String username);

    User oneUser(long id);


    public void updateUser(User updatedUser);

}
