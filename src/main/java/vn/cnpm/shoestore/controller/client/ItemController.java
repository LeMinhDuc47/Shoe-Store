package vn.cnpm.shoestore.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ItemController {
    @GetMapping("/product/{id}")
    public String getProductDetail(@PathVariable long id) {
        return "/client/product/detail";
    }
}