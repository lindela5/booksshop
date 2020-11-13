package com.innowise.darya.action;

import com.google.gson.Gson;
import com.innowise.darya.dto.AuthorDTO;
import com.innowise.darya.dto.BookDTO;
import com.innowise.darya.service.AuthorService;
import com.innowise.darya.service.BookService;
import com.opensymphony.xwork2.ActionSupport;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BooksAction extends ActionSupport {

    private BookService bookService;


    private String jsonString;
    private List<BookDTO> book;
    private List<BookDTO> bookSection;

    public BooksAction(BookService bookService) {
        this.bookService = bookService;
    }

    @Override
    public String execute() {

//        Gson gson = new Gson();
//        jsonString = gson.toJson(bookService.getAllBooks());
        book = bookService.getAllBooks();
       //bookSection = bookService.getBySection(section);

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