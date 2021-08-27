package mapper;

import entity.FirstClassMenu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface LoginMapper {
    @Select("SELECT id FROM sys_usr WHERE usrname = #{arg0} AND psw = #{arg1}")
    Long login(String username, String pwd);

    List<FirstClassMenu> getMenus();

    List<FirstClassMenu> getMenusByUserId(Long userId);
}
