package starter.webflux;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import javax.annotation.PostConstruct;


@SpringBootApplication
public class WebfluxEchoApplication {
    private static Logger LOG = LogManager.getLogger(WebfluxEchoApplication.class);

    @PostConstruct
    public void startupApplication() {
        LOG.info("http://localhost:8080/");
    }

    public static void main(String[] args) {
        SpringApplication.run(WebfluxEchoApplication.class, args);
    }

}