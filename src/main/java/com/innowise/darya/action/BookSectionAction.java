package com.innowise.darya.action;

import com.innowise.darya.dto.BookDTO;
import com.innowise.darya.dto.SectionDTO;
import com.innowise.darya.service.BookService;
import com.innowise.darya.service.SectionService;
import com.opensymphony.xwork2.Action;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookSectionAction {

    private BookService bookService;
    private SectionService sectionService;

    private List<BookDTO> book;
    private List<BookDTO> books;
    private List<SectionDTO> section;
    private String sectionId;
    HttpServletRequest request;


    public BookSectionAction(BookService bookService, SectionService sectionService) {
        this.bookService = bookService;
        this.sectionService = sectionService;

    }


    public String execute() throws Exception {
        System.out.println("booksSection: " + sectionId);
        books = bookService.getBooksBySection(Long.parseLong(sectionId));
        return Action.SUCCESS;
    }
}
