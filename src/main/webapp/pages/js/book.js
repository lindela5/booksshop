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
    if (books.length === 0) {
        $("#results").append(`</br><h1>No such books</h1>`)
    } else {
        $("#results").append(books.map(book => createCard(book.picture, book.bookTitle, book.bookAuthor, book.yearOfIssue, book.price)))
    }
}

const createCard = (picture, title, authors, year, price) => {
    authors = authors.map(author => `<span>${author.authorLastName}</span>`).join(", ");

    return `<div class="card">
                <img src="${picture}" class="card-img-top" alt="picture"/>
                <div class="card-body">
                    <h5 class="card-title">${title}</h5>
                    <p>
                        <span>Author(s): ${authors}</span></br>
                        <span>Year: ${year}</span></br>
                        <span>Price: ${price} $</span>
                    </p>
                    <a href="#" class="btn btn-primary">Add to cart</a>
                </div>
            </div>`;
}