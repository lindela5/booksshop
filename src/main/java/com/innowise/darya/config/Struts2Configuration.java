package com.innowise.darya.config;

import org.apache.struts2.dispatcher.filter.StrutsPrepareAndExecuteFilter;
import org.apache.struts2.views.JspSupportServlet;
import org.springframework.boot.autoconfigure.condition.ConditionalOnBean;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.boot.web.servlet.DelegatingFilterProxyRegistrationBean;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.web.filter.DelegatingFilterProxy;

import javax.servlet.DispatcherType;

import static javax.servlet.DispatcherType.*;
import static org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer.DEFAULT_FILTER_NAME;


@Configuration
@Order(1)
public class Struts2Configuration {

//    @Bean
//    public ServletRegistrationBean servletRegistrationBean(final DispatcherServlet dispatcherServlet) {
//        final ServletRegistrationBean servletRegistrationBean = new ServletRegistrationBean(dispatcherServlet);
//        servletRegistrationBean.setEnabled(false);
//        return servletRegistrationBean;
//    }

    @Bean
    public FilterRegistrationBean filterRegistration() {
        final FilterRegistrationBean registration = new FilterRegistrationBean();
        registration.setFilter(new DelegatingFilterProxy("springSecurityFilterChain"));
        registration.setFilter(new StrutsPrepareAndExecuteFilter());
        registration.setOrder(1);
        registration.addUrlPatterns("/*");
        registration.setDispatcherTypes(REQUEST, FORWARD);
        return registration;
    }
//    @SuppressWarnings({"rawtypes", "unchecked" })
//    @Bean
//    public ServletRegistrationBean servletRegistrationBean() {
//        ServletRegistrationBean registrationBean = new ServletRegistrationBean();
//        registrationBean.setName("JspSupportServlet");
//        registrationBean.setServlet(new JspSupportServlet());
//        registrationBean.addUrlMappings("/JspSupportServlet");
//        registrationBean.setLoadOnStartup(1);
//        return registrationBean;
//    }

//    @Bean
//    @ConditionalOnBean(name = {"springSecurityFilterChain"})
//    public DelegatingFilterProxyRegistrationBean securityFilterChainRegistration(SecurityProperties securityProperties) {
//        DelegatingFilterProxyRegistrationBean registration = new DelegatingFilterProxyRegistrationBean(DEFAULT_FILTER_NAME);
//        registration.setOrder(securityProperties.getFilter().getOrder());
//        registration.setDispatcherTypes(FORWARD, INCLUDE, REQUEST, ASYNC, ERROR);
//        return registration;
//    }

}