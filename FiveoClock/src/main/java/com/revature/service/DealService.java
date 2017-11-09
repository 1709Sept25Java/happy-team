package com.revature.service;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.revature.dao.DealDaoImpl;
import com.revature.util.HibernateUtil;
@Service
public class DealService {

	@Transactional
	public static String getDeals() throws JsonProcessingException {
		Session s = HibernateUtil.getSession();
		DealDaoImpl deals = new DealDaoImpl();
		String dealsJSON=deals.getDealsJSON();
		s.close();
		return dealsJSON;
	}
}
