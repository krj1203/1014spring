package ben.spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Ch05Application {

	public static void main(String[] args) {
		//SpringApplication.run(Ch05Application.class);
		SpringApplication application = new SpringApplication(Ch05Application.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		application.run(args);
	}

}
