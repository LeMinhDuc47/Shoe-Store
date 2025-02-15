package vn.cnpm.shoestore.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.cnpm.shoestore.domain.User;
import vn.cnpm.shoestore.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
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
}
