package com.foodapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.foodapp.entities.Admin;
@Repository
public class AdminDao {
	@Autowired
	EntityManagerFactory emf;

	public void saveAdmin(Admin admin) {

		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(admin);
		et.commit();
		em.close();

	}

	public void update(Admin admin) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.merge(admin);
		et.commit();
		em.close();

	}

	@SuppressWarnings("unchecked")
	public List<Admin> viewAllAdmin() {
		EntityManager em = emf.createEntityManager();
		return em.createQuery("from Admin").getResultList();

	}

	public void deleteAdmin(int id) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Admin admin = em.find(Admin.class, id);
		et.begin();
		em.remove(admin);
		et.commit();
		em.close();

	}

	public Admin login(String email, String password) {

		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Query query = em.createQuery("select a from Admin a where a.email=?1 and a.password=?2");
		query.setParameter(1, email);
		query.setParameter(2, password);
		try {

			@SuppressWarnings("unchecked")
			List<Admin> admins = query.getResultList();
			return admins.get(0);

		} catch (Exception e) {
			return null;
		}

	}
}
