package com.foodapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.foodapp.entities.Product;

@Repository
public class ProductDao {  
	
	
	@Autowired
	EntityManagerFactory emf;
	public void saveProduct(Product product) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(product);
		et.commit();
		em.clear();


	}

	public void updateProduct(Product product) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.merge(product);
		et.commit();
		em.clear();

	}

	@SuppressWarnings("unchecked")
	public List<Product> viewAllProduct() {
		EntityManager em = emf.createEntityManager();

		return em.createQuery("from Product").getResultList();

	}

	public void deleteProduct(int id) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Product	product  = em.find(Product.class, id);
		et.begin();
		em.remove(product);
		et.commit();
		em.clear();

	}

	public Product viewProductById(int id) {
	return	(emf.createEntityManager()).find(Product.class,id);
		
		
	}

}
