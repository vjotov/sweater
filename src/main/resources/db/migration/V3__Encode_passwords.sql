create extension if not exists pgcrypto;

update usr set password = crypt(password, gen   _salt('bf',8));