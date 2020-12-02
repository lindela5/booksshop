package com.innowise.darya.action;

import com.opensymphony.xwork2.ActionProxy;
import org.apache.struts2.StrutsSpringJUnit4TestCase;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

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