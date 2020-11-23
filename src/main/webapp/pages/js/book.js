function myFunction(id) {
    let cardBook = document.getElementById('results')
    while (cardBook.hasChildNodes()) {
        cardBook.removeChild(cardBook.firstChild);
    }
    console.log(id);
    fetch('/bookSection.action?sectionId=' + id)
        .then((response) => {
            return response.json();
        })
        .then((data) => {
            console.log(data);
            console.log(data.books);
            reloadBooks(data.books);
        })
        .catch((response) => {
            console.log("error");
            console.log(response);


        });
    // var rowCount = cardBook.length;
    //
    // for (var x=rowCount-1; x>0; x--) {
    //     cardBook[x].parentNode.removeChild(cardBook[x]);
    //     var el = document.getElementById('div-02');
    // cardBook.remove();
    // var cardBook = document.getElementById('card');

//     $.ajax({
//         type : "GET",
//         url : "/bookSection.action",
// //
// //         // data : "data to be sent on the server",
// //         // success : {"Message on success"},
// //         // error : {"Message on error"}
// });

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


const reloadBooks = (books) => {
    let book = JSON.parse(books, function (key, value) {
        if (key == 'date') return new Date(value);
        return value;
    });
    if (book.length == 0) {
        $("#results").append(`</br><h1>No such books</h1>`)
    } else {
        for (index = 0; index < book.length; ++index) {

            console.log(book[index]);

            $("#results").append(`<div id="card" class="card" style="width: 18rem; float: left; height: 20rem;">
                <div class="card-body"><h5 class="card-title">${book[index].bookTitle}</h5>
                <p>${book[index].yearOfIssue}</p></br><p> Price: ${book[index].price} $</p></br>
                <a href="#" class="btn btn-primary">Add to cart</a></div></div>`)//(`<p>${book[index].bookTitle}</p>`)
        }
    }
}