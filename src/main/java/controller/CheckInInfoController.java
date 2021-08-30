package controller;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.CheckInService;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
public class CheckInInfoController {
    @Resource
    private CheckInService checkInService;

    @RequestMapping("/getCheckInInfo.do")
    public String getCheckInInfo(@RequestParam(name = "pageNum",defaultValue = "1") Integer pageNum,
                                 @RequestParam(name = "pageSize",defaultValue = "2") Integer pageSize,
                                 Model model){
        List<Map<String,Object>> allCheckInInfo = checkInService.selectAllCheckInInfo(pageNum,pageSize);
        PageInfo<Map<String,Object>> info = new PageInfo<>(allCheckInInfo);
        model.addAttribute("pageInfo", info);
        return "admin/bill/inroominfo.jsp";
    }

    @PostMapping("/getCheckInInfoByFilter.do")
    public String getCheckInInfoByFilter(String type, String keyword, Model model){
        List<Map<String,Object>> infoList = checkInService.selectAllCheckInInfoByFilter(type,keyword);
        model.addAttribute("infoList", infoList);
        return "admin/bill/inroominfo_filter.jsp";
    }
}
