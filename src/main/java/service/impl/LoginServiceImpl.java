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
        String encrtpted = MD5.finalMD5(password);
        int flag = loginMapper.login(username,encrtpted);

        return flag > 0 ? true : false;
    }
}
