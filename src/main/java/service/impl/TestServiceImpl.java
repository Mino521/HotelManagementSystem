package service.impl;

import mapper.TestMapper;
import org.springframework.stereotype.Service;
import service.TestService;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class TestServiceImpl implements TestService {
    @Resource
    private TestMapper testMapper;

    public List<Map<String,Object>> selectAll(){
        return testMapper.getAll();
    }
}
