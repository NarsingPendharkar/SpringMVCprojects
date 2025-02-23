package com.shop.Config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[]{JpaConfig.class}; // Database & Transaction Management
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{WebMvcConfig.class}; // Web MVC Configuration
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"}; // Maps all requests
    }
}
