package com.innowise.darya.action;

//import com.google.gson.Gson;
import com.innowise.darya.dto.AuthorDTO;
import com.innowise.darya.dto.BookDTO;
import com.innowise.darya.dto.SectionDTO;
import com.innowise.darya.service.AuthorService;
import com.innowise.darya.service.BookService;
import com.innowise.darya.service.SectionService;
import com.opensymphony.xwork2.ActionSupport;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.struts2.ServletActionContext;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BooksAction extends ActionSupport {

    private BookService bookService;
    private SectionService sectionService;

    //    private String jsonString;
    private List<BookDTO> book;
    private List<BookDTO> bookSection;
    private List<SectionDTO> section;
    private String sectionId;
    HttpServletRequest request;


    public BooksAction(BookService bookService, SectionService sectionService) {
        this.bookService = bookService;
        this.sectionService = sectionService;

    }

    @Override
    public String execute() {

//        Gson gson = new Gson();
//        jsonString = gson.toJson(bookService.getAllBooks());
//        book = bookService.getAllBooks();

        System.out.println("books: " + sectionId);
        section = sectionService.getAllSection();
//       request = ServletActionContext.getRequest();
        //sectionId = request.getParameter("sectionId");
//
//        bookSection = bookService.getBySection(Long.valueOf(sectionId));
        return "success";

    }
}
//    public String populate() throws Exception {
//
//      List<BookDTO> book = bookService.getAllBooks();
//
//        return SUCCESS;
//    }

//    public String getJsonString() {
//        return jsonString;
//    }
//
//    public void setJsonString(String jsonString) {
//        this.jsonString = jsonString;
//    }
//}