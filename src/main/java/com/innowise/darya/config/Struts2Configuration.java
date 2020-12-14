package com.innowise.darya.config;

import org.apache.struts2.dispatcher.filter.StrutsPrepareAndExecuteFilter;
import org.springframework.boot.autoconfigure.condition.ConditionalOnBean;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.boot.web.servlet.DelegatingFilterProxyRegistrationBean;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.filter.DelegatingFilterProxy;

import javax.servlet.DispatcherType;

import static javax.servlet.DispatcherType.*;
import static org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer.DEFAULT_FILTER_NAME;


@Configuration
public class Struts2Configuration {

//    @Bean
//    public ServletRegistrationBean servletRegistrationBean(final DispatcherServlet dispatcherServlet) {
//        final ServletRegistrationBean servletRegistrationBean = new ServletRegistrationBean(dispatcherServlet);
//        servletRegistrationBean.setEnabled(false);
//        return servletRegistrationBean;
//    }

    @Bean
    public FilterRegistrationBean filterRegistration() {
        FilterRegistrationBean registration = new FilterRegistrationBean();
        registration.setFilter(new StrutsPrepareAndExecuteFilter());
        registration.addUrlPatterns("/*");
        registration.setDispatcherTypes(REQUEST, FORWARD);
        registration.setName("StrutsPrepareAndExecuteFilter");
        return registration;
    }

//    @Bean
//    @ConditionalOnBean(name = {"springSecurityFilterChain"})
//    public DelegatingFilterProxyRegistrationBean securityFilterChainRegistration(SecurityProperties securityProperties) {
//        DelegatingFilterProxyRegistrationBean registration = new DelegatingFilterProxyRegistrationBean(DEFAULT_FILTER_NAME);
//        registration.setOrder(securityProperties.getFilter().getOrder());
//        registration.setDispatcherTypes(FORWARD, INCLUDE, REQUEST, ASYNC, ERROR);
//        return registration;
//    }

}