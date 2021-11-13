package by.bw.logindemo.repositories;

import by.bw.logindemo.DAO.authority.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
        User findByUsername(String userName);
}
