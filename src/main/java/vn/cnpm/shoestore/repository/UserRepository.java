package vn.cnpm.shoestore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.cnpm.shoestore.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User minduc);

    List<User> findAll();

    User findById(long id);
}
