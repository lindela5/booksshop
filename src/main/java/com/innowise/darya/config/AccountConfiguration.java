package com.innowise.darya.config;

import com.innowise.darya.repositoty.AccountRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

@Configuration
//@EnableWebSecurity
public class AccountConfiguration{// extends WebSecurityConfigurerAdapter {

    @Bean
    UserDetailsService userDetailsService(AccountRepository accountRepository){
        return username -> accountRepository
                .findByUsername(username)
                .map(account -> {
                    boolean active = account.isActive();
                    return new User(account.getUsername(), account.getPassword(), active,
                            active, active,active, AuthorityUtils.createAuthorityList("ROLE_ADMIN",
                            "ROLE_USER"));
                })
                .orElseThrow(
                        ()-> new UsernameNotFoundException(String.format("username %s not found!",
                               username )));
    }

//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        super.configure(http);
//    }
//
//    @Override
//    protected UserDetailsService userDetailsService() {
//        return super.userDetailsService();
//    }
}
