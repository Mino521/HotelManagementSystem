package service;

import entity.FirstClassMenu;

import java.util.List;

public interface LoginService {
    Long isLoginSuccess(String username, String password) throws Exception;

    List<FirstClassMenu> getMenus();

    List<FirstClassMenu> getMenusByUserId(Long userId);
}
