package com.innowise.darya.action;

import com.innowise.darya.service.BookService;
import com.innowise.darya.service.SectionService;
import org.apache.struts2.StrutsSpringTestCase;
import org.apache.struts2.dispatcher.mapper.ActionMapping;
import org.mockito.Mock;

import javax.servlet.ServletException;
import java.io.UnsupportedEncodingException;

public class BooksActionTest extends StrutsSpringTestCase {

    @Mock
    BookService bookService;
    @Mock
    SectionService sectionService;


    public void testGetActionMapping() {
        ActionMapping mapping = getActionMapping("/books.action");
        assertNotNull(mapping);
        assertEquals("books", mapping.getName());
    }



    public void testExecuteAction() throws ServletException, UnsupportedEncodingException {
        String output = executeAction("/books.action");
        assertEquals("", output);
    }

//    public void testGetValueFromStack() throws ServletException, UnsupportedEncodingException {
////        request.setParameter("name", "FD");
//        executeAction("/books.action");
////        String name = (String) findValueAfterExecute("name");
////        assertEquals("FD", name);
//    }
}
