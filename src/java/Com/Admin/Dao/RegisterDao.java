/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Dao;

import Com.Admin.Model.RegisterModel;
import Com.Util.HibernateUtil;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Teju
 */
public class RegisterDao {
    public boolean save(RegisterModel r) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        if (isExist(r)) {
            return false;
        }
        Transaction t = null;

        try {
            t = session.getTransaction();
            t.begin();
            session.saveOrUpdate(r);
            t.commit();
        } catch (Exception e) {
            e.printStackTrace();
            t.rollback();
        } finally {
            session.close();
        }
        return true;
    }

    public static boolean isExist(RegisterModel r) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        boolean result = false;
        Criteria c = hsession.createCriteria(RegisterModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            c.add(Restrictions.eq("Username", r.getUname()));
            RegisterModel u = (RegisterModel) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return result;
    }

    public List<RegisterModel> getAll() {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        Criteria c = hsession.createCriteria(RegisterModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            List<RegisterModel> empList = c.list();
            tx.commit();
            return empList;
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }

    public RegisterModel getById(long id) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        RegisterModel u = null;
        Criteria c = hsession.createCriteria(RegisterModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            c.add(Restrictions.eq("Id", id));
            u = (RegisterModel) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }

    public void Update(RegisterModel i) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        try {
            System.err.println(i);
            session.update(i);
            tx.commit();

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            session.close();
        }
    }

    public int Delete(long id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        try {
            RegisterModel deleteObject = (RegisterModel) session.load(RegisterModel.class, id);
            session.delete(deleteObject);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
            return 0;
        } finally {
            session.close();

        }
        return 1;
    }

    public RegisterModel getSuperAdmin(RegisterModel g) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        RegisterModel u = null;
        Criteria c = hsession.createCriteria(RegisterModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            c.add(Restrictions.eq("Username", g.getUname()));
            c.add(Restrictions.eq("Password", g.getPass()));
            u = (RegisterModel) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }


    public boolean login(String username, String password) {
        
        boolean b = false;
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        RegisterModel u = null;
        Criteria c = hsession.createCriteria(RegisterModel.class);
        Transaction tx = hsession.beginTransaction();
        try {
            
            c.add(Restrictions.eq("uname", username));
            u = (RegisterModel) c.uniqueResult();
            
               
            if(password.equals(u.getPass()))
            {
                b = true;
             
            }else{
            
                b = false;
            }
            
            
            
            //return empList;
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
     return b;

    }
}
    

    

