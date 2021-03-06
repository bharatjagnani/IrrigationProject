package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.example.repository.UserRepository;
import com.example.service.impl.CustomUserDetialsService;



@Configuration
@EnableWebSecurity
@ComponentScan({"com.example.service.impl","com.example.repository"})
@EnableJpaRepositories(basePackageClasses = UserRepository.class)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	 @Autowired
	 CustomUserDetialsService userDetailsService;
	 
	 @Autowired
	 public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
	  /* auth.jdbcAuthentication().dataSource(dataSource)
	  .usersByUsernameQuery(
	   "select first_name from users where user_id=?")
	  .authoritiesByUsernameQuery("Select username ,role from user_roles where username =?");*/
		 
		
		auth.userDetailsService(userDetailsService)
		.passwordEncoder(new PasswordEncoder(){

			@Override
			public String encode(CharSequence rawPassword) {
				// TODO Auto-generated method stub
				return rawPassword.toString();
			}

			@Override
			public boolean matches(CharSequence rawPassword, String encodedPassword) {
				// TODO Auto-generated method stub
				if(rawPassword.equals(encodedPassword)){
					return true;
				}else{
				return false;
				}
			}
			
			
		});
	  
	 } 
	 
    @Override
    protected void configure(HttpSecurity http) throws Exception {
    /*    http
            .authorizeRequests()
                .antMatchers("/", "/home").permitAll()
                .anyRequest().authenticated()
                .and()
            .formLogin()
                .loginPage("/login")
                .permitAll()
                .and()
            .logout()
                .permitAll();*/
        System.out.println("Authentication");
        http.authorizeRequests()
        .antMatchers("/","/irrigation/**").access("hasRole('ROLE_ADMIN')")
        .anyRequest().permitAll()
        .and()
          .formLogin().loginPage("/login")
          .usernameParameter("username").passwordParameter("password")
        .and()
          .logout().logoutSuccessUrl("/logout") 
         .and()
         .exceptionHandling().accessDeniedPage("/403")
        .and()
          .csrf();
    }
    /*@Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth
            .inMemoryAuthentication()
            auth.userDetailsService(userDetailsService)
                .withUser("user").password("password").roles("USER");
        
    }*/
 
}
