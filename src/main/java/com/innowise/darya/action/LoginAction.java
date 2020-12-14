package com.innowise.darya.action;


import com.innowise.darya.entity.Account;
import com.opensymphony.xwork2.ActionSupport;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.java.Log;
import org.apache.struts2.ServletActionContext;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Collection;
import java.util.Iterator;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Log
public class LoginAction extends ActionSupport {

    private static final long serialVersionUID = 7299264265184515893L;
//    private Account account;

    public String username;
    public String password;
////
//    HttpServletRequest request = ServletActionContext.getRequest();
////
//    public String execute() {
//        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        System.out.println("Username: " + userDetails.getUsername());
//        System.out.println("Password: " + userDetails.getPassword());
//        Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>) userDetails.getAuthorities();
//        for (Iterator i = authorities.iterator(); i.hasNext();) {
//            SimpleGrantedAuthority authority = (SimpleGrantedAuthority) i.next();
//            System.out.println("Role: " + authority.getAuthority());
//        }
//        this.setUsername(request.getUserPrincipal().getName());
//        return SUCCESS;
//    }


//    @Override
//    public String execute() {
//        HttpServletRequest request = ServletActionContext.getRequest();
//        String login = (String) request.getSession().getAttribute("username");
//        System.out.println(login);
//
//
//        // Username и password действительны.
//        log.info(this.username);
//        if ("admin".equals(this.username) && "admin".equals(this.password)) {
//            HttpSession session = request.getSession();
//        return "loginSuccess";}
//        else {
//            // ** Смотреть в ApplicationResources.properties
//
//            return "loginError";
//        }
//    }
//}

    @Override
    public String execute() {

        //Principal principal = ServletActionContext.getRequest().getUserPrincipal();
        //    UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

//        System.out.println("username: " + userDetails.getUsername());
//        System.out.println("password: " + userDetails.getPassword());
//        Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>) userDetails.getAuthorities();
//        for (Iterator it = authorities.iterator(); it.hasNext(); ) {
//            SimpleGrantedAuthority authority = (SimpleGrantedAuthority) it.next();
//            System.out.println("Role: " + authority.getAuthority());
//        }
        if (!SecurityContextHolder.getContext().getAuthentication().getPrincipal().equals("anonymousUser")) {
            System.out.println(SecurityContextHolder.getContext().getAuthentication().getPrincipal());
            return SUCCESS;
        } else {
//            // ** Смотреть в ApplicationResources.properties
            System.out.println(SecurityContextHolder.getContext().getAuthentication().getPrincipal());
            return ERROR;
        }
    }
}

