package vn.cnpm.shoestore.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.cnpm.shoestore.domain.Product;
import vn.cnpm.shoestore.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product handleSaveProduct(Product product) {
        return this.productRepository.save(product);
    }

    public List<Product> getAllProducts() {
        return this.productRepository.findAll();
    }
}