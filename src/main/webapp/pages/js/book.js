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

}



const reloadBooks = (books) => {

    if (books.length == 0) {
        $("#results").append(`</br><h1>No such books</h1>`)
    } else {
        for (index = 0; index < books.length; ++index) {

            console.log(books[index]);

        //     var author
        //     for (i = 0; i < book[index].bookAuthor.length; ++i){
        //         author[i] = book.bookAuthor[i].authorId
        //     console.log(author);
        // }

            $("#results").append(`<div class="card">
                <img src="${books[index].picture}" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title">${books[index].bookTitle}</h5>
                     <p>${books[index].yearOfIssue}</p></br>
                     <p> Price: ${books[index].price} $</p></br>
                     <a href="#" class="btn btn-primary">Add to cart</a>
                </div>
              </div>`)//(`<p>${book[index].bookTitle}</p>`)
        }
    }
}