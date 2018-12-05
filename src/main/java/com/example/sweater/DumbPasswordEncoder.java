package com.example.sweater;

import org.springframework.security.crypto.password.PasswordEncoder;

public class DumbPasswordEncoder implements PasswordEncoder {
    @Override
    public String encode(CharSequence rawPassword) {
        return String.format("Secret: '%s'",rawPassword);
    }

    @Override
    public boolean matches(CharSequence rawPassword, String s) {
        return false;
    }
}
