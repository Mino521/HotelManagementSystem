package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.LoginService;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    private LoginService loginService;

    @RequestMapping("/login.do")
    public String userLogin(String username, String password, HttpSession session) throws Exception {
        boolean flag = loginService.isLoginSuccess(username,password);
        if(flag){
            session.setAttribute("username",username);
            return "redirect:/pages/admin/index.jsp";
        }
        else {
            return "redirect:/pages/admin/login.jsp";
        }
    }
}
