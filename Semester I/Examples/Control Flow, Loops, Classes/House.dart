// In class activity

class House {
  // attributes here:
  double squareFeet;
  String location;
  bool allowsDogs;
  bool isDoorOpen;

  // constructor here:
  House({this.allowsDogs, this.squareFeet, this.location, this.isDoorOpen});

  // behaviors/methods here:
  void openDoor() {
    this.isDoorOpen = true;
  }

  void closeDoor() {
    this.isDoorOpen = false;
  }
}

void main() {
  var house = House(
      allowsDogs: true, squareFeet: 2000.0, location: "CA", isDoorOpen: false);
}
