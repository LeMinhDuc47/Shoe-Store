package vn.cnpm.shoestore.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import vn.cnpm.shoestore.domain.Role;
import vn.cnpm.shoestore.domain.User;
import vn.cnpm.shoestore.domain.dto.RegisterDTO;
import vn.cnpm.shoestore.repository.OrderRepository;
import vn.cnpm.shoestore.repository.ProductRepository;
import vn.cnpm.shoestore.repository.RoleRepository;
import vn.cnpm.shoestore.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final ProductRepository productRepository;
    private final OrderRepository orderRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository,
            ProductRepository productRepository,
            OrderRepository orderRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.productRepository = productRepository;
        this.orderRepository = orderRepository;
    }

    public Page<User> getAllUsers(Pageable pageable) {
        return this.userRepository.findAll(pageable);
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

    public User registerDTOtoUser(RegisterDTO registerDTO) {
        User user = new User();
        user.setFullName(registerDTO.getFirstName() + " " + registerDTO.getLastName());
        user.setEmail(registerDTO.getEmail());
        user.setPassword(registerDTO.getPassword());
        return user;
    }

    public boolean checkEmailExist(String email) {
        return this.userRepository.existsByEmail(email);
    }

    public User getUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public long countUsers() {
        return this.userRepository.count();
    }

    public long countProducts() {
        return this.productRepository.count();
    }

    public long countOrders() {
        return this.orderRepository.count();
    }
}
