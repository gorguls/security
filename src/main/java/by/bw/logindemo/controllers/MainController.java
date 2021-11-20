package by.bw.logindemo.controllers;

import by.bw.logindemo.DAO.authority.User;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String HomePage(@AuthenticationPrincipal User user, Model model) {
        if (user != null) {
            model.addAttribute("username", user.getUsername());
        }
        return "homepage";
    }

    @GetMapping("/information")
    public String inform(@AuthenticationPrincipal User user,
                         Model model) {
        model.addAttribute("userinfo", "Здравствуйте, " + user.getName() + " " + user.getSurname() + ", вы прошли авторизацию!");
        model.addAttribute("username", user.getUsername());
        return "information";
    }
}
