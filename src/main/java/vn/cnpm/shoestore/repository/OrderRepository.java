package vn.cnpm.shoestore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.cnpm.shoestore.domain.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {

}