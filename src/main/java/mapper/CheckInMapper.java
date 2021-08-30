package mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface CheckInMapper {
    List<Map<String, Object>> getAllCheckInInfo();

    List<Map<String, Object>> getAllCheckInInfoByFilter(String type, String keyword);

    @Delete("DELETE FROM `check_in_info` WHERE id=#{param1}")
    int deleteById(Long id);

    @Delete("DELETE FROM `check_in_info` WHERE id IN (${idAttr})")
    int batchDel(Map<String, Object> paramMap);
}
