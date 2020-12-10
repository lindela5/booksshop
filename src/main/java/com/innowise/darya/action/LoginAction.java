package com.innowise.darya.action;


import com.opensymphony.xwork2.ActionSupport;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.struts2.ServletActionContext;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.Iterator;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginAction extends ActionSupport {
    public String username;
    public String password;

    HttpServletRequest request = ServletActionContext.getRequest();

    public String execute() {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        System.out.println("Username: " + userDetails.getUsername());
        System.out.println("Password: " + userDetails.getPassword());
        Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>) userDetails.getAuthorities();
        for (Iterator i = authorities.iterator(); i.hasNext();) {
            SimpleGrantedAuthority authority = (SimpleGrantedAuthority) i.next();
            System.out.println("Role: " + authority.getAuthority());
        }
        this.setUsername(request.getUserPrincipal().getName());
        return SUCCESS;
    }
}
