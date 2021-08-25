package entity;

import lombok.Data;

@Data
public class SecondClassMenu {
    private String name;
    private String url;
    private Long parent;
}
