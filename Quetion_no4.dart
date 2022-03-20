//A class called Rectangle, which models a rectangle with a length and a width (in float),
// is designed as shown in the following class diagram. Write the Rectangle class.

void main() {
  Rectangle obj = Rectangle(4.6, 2.0);
  print(obj.toString());
  //obj.setValue = 1.0;
  //obj.setValue1 = 1.0;
  // print(obj.length);
  //print(obj.width);

  //print(obj.getValue1);
  //print(obj.getValue2);
}

class Rectangle {
  //instance variables
  //length and width
  double? length;
  double? width;
  double? area;
  double? perimeter;
  Rectangle(double length, double width) {
    //this.area = area;
    this.length = length;
    this.width = width;
    //this.perimeter = perimeter;
  }
  void set setValue(double length) {
    this.length;
  }

  get getlength => length;

  void set setValue1(double width) {
    this.width;
  }

  get getwidth => width;

  double get getArea => area = length! * width!;

  double get getperimeter => 2 * (width! + length!);

  @override
  String toString() {
    return "Rectangle[length:$length,width:$width]";
  }
}
