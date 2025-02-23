package vn.cnpm.shoestore.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.cnpm.shoestore.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    @SuppressWarnings({ "unchecked", "null" })
    User save(User minduc);

    @SuppressWarnings({ "null" })
    Page<User> findAll(Pageable pageable);

    User findById(long id);

    void deleteById(long id);

    boolean existsByEmail(String email);

    User findByEmail(String email);

}
