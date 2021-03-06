package edu.sjsu.cmpe275.project.dao;

import java.util.List;

import edu.sjsu.cmpe275.project.entity.ProductEntity;

public interface ProductDAO {
	public void addProduct(ProductEntity product);
    public List<ProductEntity> getAllProducts();
    public List getCategorizedProducts(String category);
    public void deleteProduct(Integer productId);
	public Object getCategorizedProducts(int id);
}
