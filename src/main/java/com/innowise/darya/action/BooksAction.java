package com.innowise.darya.action;

import com.innowise.darya.dto.BookDTO;
import com.innowise.darya.dto.SectionDTO;
import com.innowise.darya.service.BookService;
import com.innowise.darya.service.SectionService;
import com.opensymphony.xwork2.ActionSupport;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.java.Log;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@Action(value = "books", //
//        results = { //
//                @Result(name = "success", location = "pages/input.jsp")
//        } //
//)
@Log
public class BooksAction extends ActionSupport {

    private BookService bookService;
    private SectionService sectionService;

    //    private String jsonString;
    private List<BookDTO> book;
    private List<BookDTO> bookSection;
    private List<SectionDTO> section;
    //private String sectionId;
    private String username;
    HttpServletRequest request;

    public BooksAction(BookService bookService, SectionService sectionService) {
        this.bookService = bookService;
        this.sectionService = sectionService;

    }


    //    @PreAuthorize("hasAuthority('developers:write')")
    @Override
    public String execute() {

//        Gson gson = new Gson();
//        jsonString = gson.toJson(bookService.getAllBooks());
        book = bookService.getAllBooks();
        if (!SecurityContextHolder.getContext().getAuthentication().getPrincipal().equals("anonymousUser")) {
            this.username = ((UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUsername();
        }
        log.info(this.username);

        //System.out.println("books: " + sectionId);
        section = sectionService.getAllSection();
        return "success";

    }
}
