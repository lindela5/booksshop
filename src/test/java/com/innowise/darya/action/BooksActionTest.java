package com.innowise.darya.action;

import com.innowise.darya.config.Struts2Configuration;
import com.opensymphony.xwork2.ActionProxy;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.StrutsSpringJUnit4TestCase;
import org.apache.struts2.dispatcher.mapper.ActionMapping;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//import static org.apache.struts2.ServletActionContext.getActionMapping;
import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration
class BooksActionTest extends StrutsSpringJUnit4TestCase<BooksAction> {


//    @Autowired
//    Struts2Configuration struts2Configuration;


    @Test
    public void executeTest() throws Exception {
//        String result = executeAction("/books");
//        BooksAction action = getAction();
//        assertFalse(containsErrors());

        ActionProxy proxy = getActionProxy("/books.action");
        String result = proxy.execute();
        assertEquals("success", result);
//        assertEquals("Test by Linus", ((TestAction) proxy.getAction()).getMessage());

//        executeAction("/test/test");
//        assertFalse(getAction().hasFieldErrors());
//        assertEquals("Test by Linus", findValueAfterExecute("message"));

    }

    @Override
    protected String getConfigPath() {
        return "struts.xml";
    }
}