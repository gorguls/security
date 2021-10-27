package by.bw.security.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class HelloController {
    @GetMapping("/test")
    public String hello(Map<String, Object> model) {
        return "test";
    }

    @GetMapping("/")
    public String home(Map<String, Object> model) {
        return "home";
    }
}
