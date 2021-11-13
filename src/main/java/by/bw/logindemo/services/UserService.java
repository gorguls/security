package by.bw.logindemo.services;

import by.bw.logindemo.DAO.authority.User;
import by.bw.logindemo.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        User u = userRepository.findByUsername(userName);
        System.out.println(u.toString());
        return userRepository.findByUsername(userName);
    }
}
