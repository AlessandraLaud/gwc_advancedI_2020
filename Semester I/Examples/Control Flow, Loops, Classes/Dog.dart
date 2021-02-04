class Dog {
  String breed;
  String color;
  String name;
  double weight;

  // constructor
  Dog(String breed, String color, String name, double weight) {
    this.breed = breed;
    this.color = color;
    this.name = name;
    this.weight = weight;
  }

  // simpler way to declare contructor
  // Dog(this.breed, this.color, this.name, this.weight);

  // declare named parameters so that the user knows exactly what to pass in
  // Dog({this.breed, this.color, this.name = "Bob", this.weight});

  void bark() {
    print("Woof Woof");
  }

  void showInfo() {
    print("\n---- " + this.name + "'s Info ----");
    print("Breed: " + this.breed);
    print("Color: " + this.color);
    print("Weight: " + this.weight.toString());
  }
}
