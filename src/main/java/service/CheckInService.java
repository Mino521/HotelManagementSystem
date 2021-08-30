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

    /**
     *
     * @param type
     * @param keyword
     * @return
     */
    List<Map<String,Object>> selectAllCheckInInfoByFilter(String type, String keyword);

    /**
     *
     * @param id
     * @return
     */
    boolean deleteById(Long id);
}
