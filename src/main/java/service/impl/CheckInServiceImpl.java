package service.impl;

import com.github.pagehelper.PageHelper;
import mapper.CheckInMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.CheckInService;

import java.util.List;
import java.util.Map;

@Service
public class CheckInServiceImpl implements CheckInService {
    @Autowired
    private CheckInMapper checkInMapper;

    @Override
    public List<Map<String,Object>> selectAllCheckInInfo(Integer pageNum, Integer pageSize){
        PageHelper.startPage(pageNum,pageSize);
        return checkInMapper.getAllCheckInInfo();
    }

    @Override
    public List<Map<String,Object>> selectAllCheckInInfoByFilter(String type, String keyword){
        return checkInMapper.getAllCheckInInfoByFilter(type,keyword);
    }
}
