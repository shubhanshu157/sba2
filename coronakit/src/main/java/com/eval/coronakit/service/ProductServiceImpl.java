package com.eval.coronakit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eval.coronakit.dao.ProductMasterRepository;
import com.eval.coronakit.entity.ProductMaster;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductMasterRepository repository;
	
	@Override
	public ProductMaster addNewProduct(ProductMaster product) {
		// TODO Auto-generated method stub
		return this.repository.save(product);
	}

	@Override
	public List<ProductMaster> getAllProducts() {
		// TODO Auto-generated method stub
		return this.repository.findAll();
	}

	@Override
	public ProductMaster deleteProduct(int productId) {
		// TODO Auto-generated method stub
		ProductMaster productMaster = this.repository.findById(productId).orElseThrow(() -> new IllegalArgumentException("Invalid book Id:" + productId));
		if(productMaster!=null)
			this.repository.deleteById(productId);
		return productMaster;
	}

	@Override
	public ProductMaster getProductById(int productId) {
		// TODO Auto-generated method stub
		return this.repository.findById(productId).orElse(null);
	}

}
