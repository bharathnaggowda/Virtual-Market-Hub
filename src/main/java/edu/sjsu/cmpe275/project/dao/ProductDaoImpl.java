package edu.sjsu.cmpe275.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.sjsu.cmpe275.project.entity.ProductEntity;

@Repository
public class ProductDaoImpl implements ProductDAO  {

	@Autowired
    private SessionFactory sessionFactory;
	
	public void addProduct(ProductEntity product) {
		this.sessionFactory.getCurrentSession().save(product);
	}

	@SuppressWarnings("unchecked")
	public List<ProductEntity> getAllProducts() {
		return this.sessionFactory.getCurrentSession().createQuery("from ProductEntity").list();
	}

	public void deleteProduct(Integer productId) {
		ProductEntity product = (ProductEntity) sessionFactory.getCurrentSession().load(
				ProductEntity.class, productId);
        if (null != product) {
        	this.sessionFactory.getCurrentSession().delete(product);
        }
	}

	public List getCategorizedProducts(String category) {
		
        Session session = sessionFactory.openSession();
        
        String SQL_QUERY = "from ProductEntity as p where p.category =?";
        Query query = session.createQuery(SQL_QUERY);
        query.setParameter(0,category);
        List list = query.list();

        if ((list != null) && (list.size() > 0)) {
        	session.close();
        	return list;  
        }
		return list;
                 
	}

	public Object getCategorizedProducts(int id) {
		
        Session session = sessionFactory.openSession();
        
        String SQL_QUERY = "from ProductEntity as p where p.productId =?";
        Query query = session.createQuery(SQL_QUERY);
        query.setParameter(0,id);
        List list = query.list();

        if ((list != null) && (list.size() > 0)) {
        	session.close();
        	return list;  
        }
		return list;
                 
	}
}
