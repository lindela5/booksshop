package com.innowise.darya.action;

import com.google.gson.Gson;
import com.innowise.darya.dto.BookDTO;
import com.innowise.darya.service.BookService;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

public class BooksAction extends ActionSupport {

    private final BookService bookService;


    private String jsonString;

    public BooksAction(BookService bookService) {
        this.bookService = bookService;
    }

    @Override
    public String execute() {

        Gson gson = new Gson();
        jsonString = gson.toJson(bookService.getAllBooks());

        return "success";
    }

    public String getJsonString() {
        return jsonString;
    }

    public void setJsonString(String jsonString) {
        this.jsonString = jsonString;
    }
}