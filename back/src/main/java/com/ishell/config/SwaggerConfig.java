package com.ishell.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;
import java.util.List;

//http://localhost:8080/swagger-ui/index.html 访问接口文档
@Configuration
@EnableSwagger2//开启Swagger2
public class SwaggerConfig {
    //配置Swagger的Docket的bean实例
    @Bean
    public Docket initDocket(Environment env) {
        return new Docket(DocumentationType.OAS_30)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.ishell.controller"))
                .paths(PathSelectors.any())
                .build();
    }
    //配置Swagger信息
    private ApiInfo apiInfo() {
        return new ApiInfo(
                "Baret-H",
                "Swagger API文档",
                "1.0",
                "",
                new Contact("Ishell", "", "2592345590@qq.com"),//作者信息
                "Apache 2.0",
                "https://www.apache.org/licenses/LICENSE-2.0",
                new ArrayList<>());
    }
}
