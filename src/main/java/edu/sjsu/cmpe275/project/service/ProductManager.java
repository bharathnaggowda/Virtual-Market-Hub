package edu.sjsu.cmpe275.project.service;

import java.util.List;

import edu.sjsu.cmpe275.project.entity.ProductEntity;

public interface ProductManager {
	public void addProduct(ProductEntity product);
    public List<ProductEntity> getAllProducts();
    public void deleteProduct(Integer productId);
}
