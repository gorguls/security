package by.bw.logindemo.controllers;

import by.bw.logindemo.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/usermanager")
@PreAuthorize("hasAuthority('ADMIN')")
public class ManagerController {
    @Autowired
    private UserRepository userRepository;


}
