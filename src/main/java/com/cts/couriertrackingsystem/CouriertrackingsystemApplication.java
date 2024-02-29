package com.cts.couriertrackingsystem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.cts")
@EntityScan(basePackages = "com.cts")
public class CouriertrackingsystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(CouriertrackingsystemApplication.class, args);
	}
	
}
