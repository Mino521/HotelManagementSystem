package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.TestService;

import java.util.List;
import java.util.Map;

@Controller
public class TestController {
    private TestService testService;

    public TestController(TestService testService) {
        this.testService = testService;
    }

    @RequestMapping("/test")
    @ResponseBody
    public String test(){
        return "Hello";
    }

    @RequestMapping("/getAll")
    @ResponseBody
    public List<Map<String,Object>> getAll(){
        return testService.selectAll();
    }
}
