package service;

import java.util.List;
import java.util.Map;

public interface CheckInService{
    /**
     * paging query
     * @param pageNum current page
     * @param pageSize data size per page
     * @return
     */
    List<Map<String,Object>> selectAllCheckInInfo(Integer pageNum, Integer pageSize);
}
