package edu.sjsu.cmpe275.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.sjsu.cmpe275.project.dao.LoginDAO;

@Service
public class LoginServiceImpl implements  LoginService{
       
        @Autowired
        private LoginDAO loginDAO;


       public void setLoginDAO(LoginDAO loginDAO) {
               this.loginDAO = loginDAO;
       }


               @Transactional
      public boolean checkLogin(String email, String password){
             System.out.println("In Service class...Check Login");
             return loginDAO.checkLogin(email, password);
      }

}
