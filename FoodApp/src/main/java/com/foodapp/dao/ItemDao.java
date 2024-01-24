package com.foodapp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.foodapp.entities.Item;
@Repository
public class ItemDao {
	@Autowired
	EntityManagerFactory emf;

	public void saveItem(Item item) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(item);
		et.commit();
		em.clear();

	}
	public  Item viewItembyId(int id) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Item item = em.find(Item.class, id);
		return item;
		
	}
	public void updateItem(Item item) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.merge(item);
		et.commit();
		em.clear();

	}
	public void deleteItem(int id) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Item item = em.find(Item.class, id);
		et.begin();
		em.remove(item);
		et.commit();
		em.clear();

	}
	

}
