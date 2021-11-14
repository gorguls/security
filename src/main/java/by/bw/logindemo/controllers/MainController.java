package by.bw.logindemo.controllers;

import by.bw.logindemo.DAO.authority.User;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class MainController {

    @GetMapping("/")
    public String HomePage(Map<String, Object> model){
        return "homepage";
    }

    @GetMapping("/information")
    public String inform(@AuthenticationPrincipal User user,
                         Map<String, Object> model){

        model.put("message", "Здравствуйте, " + user.getName() + " " + user.getSurname() + ", вы прошли авторизацию!");
        model.put("username", user.getUsername());
        return "information";
    }
}
