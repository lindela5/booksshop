package com.innowise.darya.entity;

import lombok.*;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "author")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class Author {

    @Id
    private Long authorId;

    private String firstName;
    private String lastName;
    private String country;

    @ManyToMany(mappedBy = "author")
    private Set<Book> books = new HashSet<>();

//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//        Author author = (Author) o;
//        return Objects.equals(authorId, author.authorId) &&
//                Objects.equals(firstName, author.firstName) &&
//                Objects.equals(lastName, author.lastName) &&
//                Objects.equals(country, author.country);
//    }

    @Override
    public int hashCode() {
        return Objects.hash(authorId, firstName, lastName, country);
    }
}
