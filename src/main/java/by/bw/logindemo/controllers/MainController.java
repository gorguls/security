package by.bw.logindemo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class MainController {
    @GetMapping("/")
    public String HomePage(Map<String, Object> model){
        return "homepage";
    }
}
