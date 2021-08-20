package mapper;

import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface TestMapper {
    @Select("SELECT * FROM test")
    List<Map<String,Object>> getAll();
}
