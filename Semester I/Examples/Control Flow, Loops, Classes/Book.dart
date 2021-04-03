class Book {
  // attributes here:
  String title;
  double price;
  String author;
  int numberOfPages;

  // constructor here:
  Book({this.title, this.price, this.author, this.numberOfPages});

  // behaviors/methods here:
  void salesTax() {
    // sales tax rate is 6%
    var tax = (6 / 100) * this.price;
    print("\n6% sales tax: ${tax}");
  }
}
