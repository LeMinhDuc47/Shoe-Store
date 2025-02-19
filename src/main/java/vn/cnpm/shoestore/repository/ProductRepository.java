package vn.cnpm.shoestore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.cnpm.shoestore.domain.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    @SuppressWarnings({ "unchecked", "null" })
    Product save(Product product);

    @SuppressWarnings({ "null" })
    List<Product> findAll();

    Product findById(long id);

    void deleteById(long id);
}