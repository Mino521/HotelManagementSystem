package service.impl;

import mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.LoginService;
import utils.MD5;

@Service
@Transactional(readOnly = false)
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;

    public boolean isLoginSuccess(String username, String password) throws Exception {
        String regex1 = "\\w{3,12}";
        String regex2 = "\\w{4,20}";

        boolean flag1 = username.matches(regex1);
        boolean flag2 = password.matches(regex2);
        if(!flag1 || !flag2)
            return false;

        String encrtptedPwd = MD5.finalMD5(password);
        int flag = loginMapper.login(username,encrtptedPwd);

        return flag > 0 ? true : false;
    }
}
