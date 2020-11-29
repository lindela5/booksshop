package com.innowise.darya.action;

import com.innowise.darya.DockerTestApplication;
import com.innowise.darya.config.Struts2Configuration;
import com.opensymphony.xwork2.ActionProxy;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.StrutsSpringJUnit4TestCase;
import org.apache.struts2.dispatcher.mapper.ActionMapping;
import org.junit.Before;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.mock.web.MockPageContext;
import org.springframework.mock.web.MockServletContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

//import static org.apache.struts2.ServletActionContext.getActionMapping;
import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.MOCK)
@WebAppConfiguration
@RunWith(SpringRunner.class)
class BooksActionTestIT extends StrutsSpringJUnit4TestCase<BooksAction> {

    BooksAction booksAction;

    @BeforeEach
    public void onSetUp() throws Exception {
        super.setUp();
        ActionProxy proxy = super.getActionProxy("/books");
        booksAction = (BooksAction) proxy.getAction();
        assertNotNull(booksAction);
    }

    @Test
    public void executeTest() throws Exception {
        String result = booksAction.execute();
        assertEquals("success", result);
    }
}