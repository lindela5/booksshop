function myFunction() {
    let cardBook = document.getElementById('ajax-results');
    // var rowCount = cardBook.length;
    //
    // for (var x=rowCount-1; x>0; x--) {
    //     cardBook[x].parentNode.removeChild(cardBook[x]);
    //     var el = document.getElementById('div-02');
    cardBook.remove();
    // var cardBook = document.getElementById('card');

    $.ajax({
        type : "GET",
        url : "/bookSection.action",
//
//         // data : "data to be sent on the server",
//         // success : {"Message on success"},
//         // error : {"Message on error"}
});

}
    // $.ajax({
    //     type: "GET",
    //     url: "bookSection.action",
    //     success: function (itr) {
    //         var x = "<ol>";
    //         $.each(itr.dataList, function () {
    //             x += "<li>" + this + "</li>";
    //         });
    //         x += "</ol>";
    //         $("#websparrow").html(x);
    //     },
    //     error: function (itr) {
    //         alert("No values found..!!");
    //     }
    // });

 //   }



// function searchById() {
//     var id = document.getElementById("search_field").value;
//     var xhttp = new XMLHttpRequest();
//     xhttp.onreadystatechange = function () {
//         if (this.readyState == 4 && this.status == 200) {
//             var book = JSON.parse(this.responseText);
//             var html = '<tr>\n' +
//                 '        <th>Book id</th>\n' +
//                 '        <th>Book title</th>\n' +
//
//                 '        <th>Delete</th>\n' +
//                 '    </tr>';
//             html = html + '<tr><td>' + book.bookId + '</td>\n' +
//                 '        <td>' + book.bookTitle + '</td>\n' +
//
//                 '        <td><button onclick="deleteBook(' + book.bookId + ')">Delete</button></td></tr>';
//             document.getElementById("bookList").innerHTML = html;
//         }
//     };
//     xhttp.open("GET", "http://localhost:8080/book/getbyid?id=" + id, true);
//     xhttp.send();
// }

// function searchBySection() {
//     var id = document.getElementById("search_field1").value;
//     var xhttp = new XMLHttpRequest();
//     xhttp.onreadystatechange = function () {
//         if (this.readyState == 4 && this.status == 200) {
//             var books = JSON.parse(this.responseText);
//             let html = '<tr>\n' +
//                 '        <th>Book id</th>\n' +
//                 '        <th>Book title</th>\n' +
//                 '        <th>Delete</th>\n' +
//                 '    </tr>';
//
//
//             document.getElementById("bookList").innerHTML = html;
//
//             books.forEach((book) => {
//
//                 document.getElementById("bookList").innerHTML = document.getElementById("bookList").outerHTML +
//                     '<tr><td>' + book.bookId + '</td>\n' +
//                     '        <td>' + book.bookTitle + '</td>\n' +
//
//                     '        <td><button onclick="deleteBook(' + book.id + ')">Delete</button></td></tr>';
//
//
//             })
//         }
//     };
//     xhttp.open("GET", "http://localhost:8080/book/getbysection?section=" + id, true);
//     xhttp.send();
// }


// function deleteBook(bookId) {
//     var xhttp = new XMLHttpRequest();
//     xhttp.open("DELETE", "http://localhost:8080/book/delete/" + bookId, true);
//     xhttp.send();
// }

// function createBook() {
//     var bookTitle = document.getElementById("book_title").value;
//     var bookIsbn = document.getElementById("book_isbn").value;
//     var bookYearOfIssue = document.getElementById("book_year_of_issue").value;
//
//     var xmlhttp = new XMLHttpRequest();   // new HttpRequest instance
//     xmlhttp.open("POST", "http://localhost:8080/book/save");
//     xmlhttp.setRequestHeader("Content-Type", "application/json");
//     xmlhttp.send(JSON.stringify({name: bookTitle, login: bookIsbn, email: bookYearOfIssue}));
//
//     loadBooks();
// }

// function loadBooks() {
//     let html;
//     var xhttp = new XMLHttpRequest();
//     xhttp.onreadystatechange = function () {
//         if (this.readyState == 4 && this.status == 200) {
//             var books = JSON.parse("jsonString");//this.responseText);
//             let html = '<tr>\n' +
//                 '        <th>Book id</th>\n' +
//                 '        <th>Book title</th>\n' +
//                 '        <th>Delete</th>\n' +
//                 '    </tr>';
//
//
//             document.getElementById("bookList").innerHTML = html;
//
//             books.forEach((book) => {
//
//                 document.getElementById("bookList").innerHTML = document.getElementById("bookList").outerHTML +
//                     '<tr><td>' + book.bookId + '</td>\n' +
//                     '        <td>' + book.bookTitle + '</td>\n' +
//
//                     '        <td><button onclick="deleteBook(' + book.id + ')">Delete</button></td></tr>';
//
//
//             })
//
//         }
//     };
//     xhttp.open("GET", "http://localhost:8082/books", true);
//     xhttp.send();
// }
//
// loadBooks();