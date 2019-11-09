package com.skilldistillery.bootwwehof;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.wwehof")
public class WweHallOfFameApplication {

	public static void main(String[] args) {
		SpringApplication.run(WweHallOfFameApplication.class, args);
	}

}
