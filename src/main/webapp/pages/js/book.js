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

    //$("#websparrow").html(x);
}