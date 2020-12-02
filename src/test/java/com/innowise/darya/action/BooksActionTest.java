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
//    @InjectMocks
//    BooksAction action;

//    @Before
//    public void initMock() {
//        MockitoAnnotations.initMocks(this);
//    }

    public void testGetActionMapping() {
        ActionMapping mapping = getActionMapping("/books.action");
        assertNotNull(mapping);
        assertEquals("books", mapping.getName());
    }

//    public void testGetActionProxy() throws Exception {
//        MockitoAnnotations.initMocks(this);
//        //set parameters before calling getActionProxy
//      //  request.setParameter("book", "[]");
//      //  request.setParameter("section", "[]");
//
//       given(bookService.getAllBooks()).willReturn(Collections.emptyList());
//       given(sectionService.getAllSection()).willReturn(Collections.emptyList());
//
//        ActionProxy proxy = getActionProxy("/books.action");
//        assertNotNull(proxy);
//
//        BooksAction action = (BooksAction) proxy.getAction();
//        assertNotNull(action);
//
//        String result = proxy.execute();
//        assertEquals(Action.SUCCESS, result);
//       // assertEquals("FD", action.getName());
//    }

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
