package service.impl;

import com.github.pagehelper.PageHelper;
import mapper.CheckInMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.CheckInService;

import java.util.HashMap;
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

    @Override
    public boolean deleteById(Long id){
        return checkInMapper.deleteById(id) >= 1;
    }

    @Override
    public boolean batchDel(String idAttr){
        idAttr = idAttr.substring(0,idAttr.length()-1);
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("idAttr", idAttr);
        return idAttr.length()/2+1 == checkInMapper.batchDel(paramMap);
    }
}
