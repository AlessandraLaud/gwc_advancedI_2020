class Book {
  String title;
  double price;
  String author;
  int numberOfPages;

  // constructor
  Book(this.title, this.price, this.author, this.numberOfPages);

  // Book({ this.title, @required this.price, this.author, this.numberOfPages });

  double salesTax() {
    // sales tax rate is 6%
    return (6 / 100) * this.price;
  }
}

class Ebook extends Book {
  String website;

  Ebook(this.website, title, price, author, numberOfPages)
      : super(title, price, author, numberOfPages);

  @override
  double salesTax() {
    // sales tax rate is 5% for an ebook
    return (5 / 100) * this.price;
  }
}
