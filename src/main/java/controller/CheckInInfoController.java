package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CheckInInfoController {

    @RequestMapping("/getCheckInInfo.do")
    public String getCheckInInfo(){
        return "admin/bill/inroominfo.jsp";
    }
}
