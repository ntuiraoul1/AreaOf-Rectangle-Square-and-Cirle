import 'dart:math' as math; // Import for PI constant

enum Shape { square, rectangle, circle }

void main() {
  print("Available shapes: square, rectangle, circle");
  String? shapeInput = stdin.readLineSync();

  Shape? shape;
  try {
    shape = Shape.values.byName(shapeInput!.toLowerCase());
  } on ArgumentError {
    print("Invalid shape. Please choose from available options.");
    return;
  }

  switch (shape) {
    case Shape.square:
      double sideLength;
      while (true) {
        print("Enter side length:");
        String? sideInput = stdin.readLineSync();
        try {
          sideLength = double.parse(sideInput!);
          if (sideLength > 0) {
            break;
          } else {
            print("Side length must be positive.");
          }
        } on FormatException {
          print("Invalid input. Please enter a number.");
        }
      }
      double area = sideLength * sideLength;
      double perimeter = 4 * sideLength;
      print("Square - Area: $area, Perimeter: $perimeter");
      break;
    case Shape.rectangle:
      double length, width;
      while (true) {
        print("Enter length:");
        String? lengthInput = stdin.readLineSync();
        try {
          length = double.parse(lengthInput!);
          if (length > 0) {
            break;
          } else {
            print("Length must be positive.");
          }
        } on FormatException {
          print("Invalid input. Please enter a number.");
        }
      }
      while (true) {
        print("Enter width:");
        String? widthInput = stdin.readLineSync();
        try {
          width = double.parse(widthInput!);
          if (width > 0) {
            break;
          } else {
            print("Width must be positive.");
          }
        } on FormatException {
          print("Invalid input. Please enter a number.");
        }
      }
      double area = length * width;
      double perimeter = 2 * (length + width);
      print("Rectangle - Area: $area, Perimeter: $perimeter");
      break;
    case Shape.circle:
      double radius;
      while (true) {
        print("Enter radius:");
        String? radiusInput = stdin.readLineSync();
        try {
          radius = double.parse(radiusInput!);
          if (radius > 0) {
            break;
          } else {
            print("Radius must be positive.");
          }
        } on FormatException {
          print("Invalid input. Please enter a number.");
        }
      }
      double area = math.pi * radius * radius;
      double perimeter = 2 * math.pi * radius;
      print("Circle - Area: $area, Perimeter: $perimeter");
      break;
  }
}



// Explanation:

// Shape enum: Defines an enum Shape to represent supported shapes (square, rectangle, circle).
// Input Handling:
// Prompts the user to choose a shape from available options.
// Converts the user input to lowercase for case-insensitive matching.
// Attempts to convert the shape input to a Shape enum value using a try...catch block to handle invalid input.
// Shape Calculations:
// Uses a switch statement based on the chosen shape.
// For each shape, it prompts the user for necessary dimensions (side length, length & width, or radius).
// It validates the user input to ensure positive values for dimensions.
// Calculates the area and perimeter using appropriate formulas.
// Finally, it prints the calculated area and perimeter for the chosen shape.
// Improvements:

// This program incorporates error handling for user input to ensure positive values for dimensions.
// It demonstrates a loop-based approach for user input validation.