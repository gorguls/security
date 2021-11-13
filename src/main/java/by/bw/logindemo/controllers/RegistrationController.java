package by.bw.logindemo.controllers;

import by.bw.logindemo.DAO.authority.Role;
import by.bw.logindemo.DAO.authority.User;
import by.bw.logindemo.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/registration")
    public String registration(){
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model) {
        User userFromDB = userRepository.findByUsername(user.getUsername());
        if (userFromDB != null) {
            model.put("message", "Пользователь уже существует");
            return "registration";
        }
        user.setActive(true);
        user.setRole(Collections.singleton(Role.USER));
        userRepository.save(user);
        return "redirect:/login";
    }
}