package com.example.jenkins_demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class JenkinsDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(JenkinsDemoApplication.class, args);
	}

	public static Boolean booleanMethod() {
		return null;
	}

	public static double circumference(double diameter) {
		return diameter * 3.141;
	}
}
