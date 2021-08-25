package mapper;

import entity.FirstClassMenu;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface LoginMapper {
    @Select("SELECT COUNT(*) FROM sys_usr WHERE usrname = #{arg0} AND psw = #{arg1}")
    int login(String username, String pwd);

    List<FirstClassMenu> getMenus();
}
