package vn.cnpm.shoestore.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.cnpm.shoestore.domain.Role;
import vn.cnpm.shoestore.domain.User;
import vn.cnpm.shoestore.repository.RoleRepository;
import vn.cnpm.shoestore.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public void deleteUser(User user) {
        this.userRepository.delete(user);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }
}
