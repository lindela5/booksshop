//package com.innowise.darya.action;
//
//import com.innowise.darya.config.Struts2Configuration;
//import org.apache.struts2.ServletActionContext;
//import org.apache.struts2.dispatcher.mapper.ActionMapping;
//import org.junit.jupiter.api.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
////import static org.apache.struts2.ServletActionContext.getActionMapping;
//import static org.junit.jupiter.api.Assertions.*;
//@RunWith(SpringJUnit4ClassRunner.class)
//
//
//class BooksActionTest  extends StrutsSpringJUnit4TestCase<SampleAction> {
//
//
//    @Autowired
//    Struts2Configuration struts2Configuration;
//
//
//    @Test
//    public void executeTest() throws Exception {
//            String result = executeAction("/books");
//            SampleAction action = getAction();
//            assertFalse(containsErrors());
//        }
//
//
//}