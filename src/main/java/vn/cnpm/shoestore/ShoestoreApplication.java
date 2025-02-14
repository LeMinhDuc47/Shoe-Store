package vn.cnpm.shoestore;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class ShoestoreApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShoestoreApplication.class, args);
	}

}
