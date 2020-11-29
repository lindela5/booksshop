package com.innowise.darya.entity;

import lombok.*;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;

@Entity
@Table(name = "books")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder (builderMethodName = "aBook")
@ToString
public class Book {

    @Id
    private Long bookId;

    private String title;

    @NotBlank
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "author_book", joinColumns = @JoinColumn(name = "bookId"),
            inverseJoinColumns = @JoinColumn(name = "authorId"))
    private Set<Author> author = new HashSet<>();

    private String isbn;


    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="section_id")
    private Section section;

    private Integer yearOfIssue;

    @NotBlank
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="publishing_house_id")
    private PublishingHouse publishingHouse;

    private BigDecimal price;
    private Integer stockBalances;
    private String picture;

//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//        Book book = (Book) o;
//        return Objects.equals(bookId, book.bookId) &&
//                Objects.equals(title, book.title) &&
//                Objects.equals(isbn, book.isbn) &&
//                Objects.equals(section, book.section) &&
//                Objects.equals(yearOfIssue, book.yearOfIssue) &&
//                Objects.equals(publishingHouse, book.publishingHouse) &&
//                Objects.equals(price, book.price) &&
//                Objects.equals(stockBalances, book.stockBalances) &&
//                Objects.equals(picture, book.picture);
//    }

    @Override
    public int hashCode() {
        return Objects.hash(bookId, title, isbn, section, yearOfIssue, publishingHouse, price, stockBalances, picture);
    }

}
