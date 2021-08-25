package service.impl;

import entity.FirstClassMenu;
import mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.LoginService;
import utils.MD5;

import java.util.List;

@Service
@Transactional(readOnly = false)
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;

    public Long isLoginSuccess(String username, String password) throws Exception {
        String regex1 = "\\w{3,12}";
        String regex2 = "\\w{4,20}";

        boolean flag1 = username.matches(regex1);
        boolean flag2 = password.matches(regex2);
        if(!flag1 || !flag2)
            return null;

        String encrtptedPwd = MD5.finalMD5(password);
        Long id = loginMapper.login(username,encrtptedPwd);

        return id;
    }

    public List<FirstClassMenu> getMenus(){
        return loginMapper.getMenus();
    }

    public List<FirstClassMenu> getMenusByUserId(Long userId){
        return loginMapper.getMenusByUserId(userId);
    }
}
