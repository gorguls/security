package by.bw.logindemo.DAO.authority;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    USER, ADMIN, SUPERUSER;

    @Override
    public String getAuthority() {
        return name();
    }
}
