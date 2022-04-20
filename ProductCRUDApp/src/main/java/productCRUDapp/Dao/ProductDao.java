package productCRUDapp.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import productCRUDapp.Model.Product;

@Repository
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	public List<Product> getProducts() {
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//delete single product
	@Transactional
	public void deleteProduct(int productId) {
		Product product = this.hibernateTemplate.load(Product.class, productId);
		this.hibernateTemplate.delete(product);
	}
	
	//get single product
	public Product getProduct(int productId) {
		return this.hibernateTemplate.get(Product.class, productId);
		
	}

}
