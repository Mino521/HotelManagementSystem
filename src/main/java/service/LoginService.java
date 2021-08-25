package service;

import entity.FirstClassMenu;

import java.util.List;

public interface LoginService {
    boolean isLoginSuccess(String username, String password) throws Exception;

    public List<FirstClassMenu> getMenus();
}
