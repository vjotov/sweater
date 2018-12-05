package com.example.sweater.domain.dto;

import com.example.sweater.domain.User;

public class MessageDto {
    private Long id;
    private String text;
    private String tag;
    private User author;
    private String  filename;
    private Long likes;
    private Boolean meLiked;
}
