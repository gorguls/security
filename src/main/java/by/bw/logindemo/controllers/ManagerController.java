package by.bw.logindemo.controllers;

import by.bw.logindemo.DAO.authority.Role;
import by.bw.logindemo.DAO.authority.User;
import by.bw.logindemo.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.swing.*;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/manager")
@PreAuthorize("hasAuthority('ADMIN')")
public class ManagerController {
    @Autowired

    private UserRepository userRepository;

    @GetMapping
    public String UserList(Model model) {
        model.addAttribute("users", userRepository.findAll());
        return "manager";
    }

    @GetMapping("{user}")
    public String EditUser(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());
        return "useredit";
    }

    @PostMapping
    public String userSave(@RequestParam("userId") User user
                           ,@RequestParam Map<String, String> form
                           ,@RequestParam String username
                           ,@RequestParam String userpassword
                           ,@RequestParam String name
                           ,@RequestParam String surname
                           ) {
        System.out.println(form.toString());
        user.setUsername(username);
        user.setPassword(userpassword);
        user.setName(name);
        user.setSurname(surname);

        Set<String> roles = Arrays.stream(Role.values())
                .map(Role::name)
                .collect(Collectors.toSet());

        user.getRole().clear();

        for (String key : form.keySet()) {
            if (roles.contains(key)){
                user.getRole().add(Role.valueOf(key));
            }
        }
        userRepository.save(user);
        return "redirect:/manager";
    }
}