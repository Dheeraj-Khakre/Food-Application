package com.foodapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.foodapp.entities.User;
@Repository
public class UserDao {

	@Autowired
	EntityManagerFactory emf;

	public void saveUser(User user) {

		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(user);
		et.commit();
		em.clear();

	}

	public User viewUserById(int id) {

		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		User user = em.find(User.class, id);

		return user;
	}

	public void updateUser(User user) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.merge(user);
		et.commit();
		em.clear();

	}

	public void deleteUserById(int id) {

		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		User user = em.find(User.class, id);

		et.begin();
		em.remove(user);
		et.commit();
		em.clear();

	}

	@SuppressWarnings("unchecked")
	public List<User> viewAllUser() {
		EntityManager em = emf.createEntityManager();

		return em.createQuery("from User").getResultList();
	}

	public User login(String email, String password) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Query query = em.createQuery("select a from User a where a.email=?1 and a.password=?2");
		query.setParameter(1, email);
		query.setParameter(2, password);
		try {

			@SuppressWarnings("unchecked")
			List<User> users = query.getResultList();
			return users.get(0);

		} catch (Exception e) {
			return null;
		}

	}

}
