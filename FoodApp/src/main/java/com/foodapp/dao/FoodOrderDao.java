package com.foodapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.foodapp.entities.FoodOrder;
@Repository
public class FoodOrderDao {
	@Autowired
	EntityManagerFactory emf ;
	
	public void saveFoodOrder(FoodOrder food) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et  = em.getTransaction();
		et.begin();
		em.persist(food);
		et.commit();
		em.clear();
	}
	 @SuppressWarnings("unchecked")
	public List<FoodOrder> viewAllFoodOrder(){
		 EntityManager em = emf.createEntityManager();
		  return ( em.createQuery("from FoodOrder")).getResultList();
	 }
	 public FoodOrder viewAllFoodOrderBYId(int id) {
		 
		 EntityManager em = emf.createEntityManager();
			EntityTransaction et  = em.getTransaction();
			FoodOrder  food = em.find(FoodOrder.class, id);
			return food;
	 }
	 public void updateFoodOrder(FoodOrder food) {
		 EntityManager em = emf.createEntityManager();
			EntityTransaction et  = em.getTransaction();
			et.begin();
			em.merge(food);
			et.commit();
			em.clear();
		 
	 }
	 
	 public void deleteFoodOrder(int id) {
		 EntityManager em = emf.createEntityManager();
			EntityTransaction et  = em.getTransaction();
			FoodOrder food = em.find(FoodOrder.class, id);
			et.begin();
			em.remove(food);
			et.commit();
			em.clear();
		 
	 }
	 
	
	
	
	
	
	
	
	
	
	

}
