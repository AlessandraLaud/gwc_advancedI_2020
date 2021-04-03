// Inheritance Example
import 'Book.dart';

class Ebook extends Book {
  // attributes here:
  String link;

  // constructor here:
  Ebook(this.link, title, price, author, numberOfPages)
      : super(
            title: title,
            price: price,
            author: author,
            numberOfPages: numberOfPages);

  // behaviors/methods here:
  @override
  void salesTax() {
    // sales tax rate is 5%
    var tax = (5 / 100) * this.price;
    print("\n5% sales tax: ${tax}");
  }
}
