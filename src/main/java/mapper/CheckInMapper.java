package mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface CheckInMapper {
    List<Map<String, Object>> getAllCheckInInfo();
}
