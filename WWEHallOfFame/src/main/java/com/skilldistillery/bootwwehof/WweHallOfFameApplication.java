package com.skilldistillery.bootwwehof;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@EntityScan("com.skilldistillery.wwehof")
public class WweHallOfFameApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(WweHallOfFameApplication.class, args);
	}
	@Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(WweHallOfFameApplication.class);
	  }

}
