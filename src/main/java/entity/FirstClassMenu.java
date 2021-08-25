package entity;

import lombok.Data;

import java.util.List;

@Data
public class FirstClassMenu{
    private Long id;
    private String name;
    private List<SecondClassMenu> secondClassMenuList;
}
