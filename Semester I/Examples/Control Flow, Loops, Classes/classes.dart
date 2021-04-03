import 'Dog.dart';
import 'Book.dart';
import 'Ebook.dart';

main() {
  var dog =
      Dog(name: "French Fry", color: "purple", weight: 150000, breed: "Huskie");
  dog.showInfo();
  dog.bark();

  var book = Book(
      title: "The Great Gatsby",
      price: 10,
      author: "F Scott Fitzgerald",
      numberOfPages: 100);
  book.salesTax();

  var ebook =
      Ebook("gatsby.com", "The Great Gatsby", 10.0, "F Scott Fitzgerald", 100);
  ebook.salesTax();
}
