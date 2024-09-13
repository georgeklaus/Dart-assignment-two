void main() {
  // Define Variables of different types
  int myInt = 31; // Integer variable
  double myDouble = 5.77; // Double (floating-point) variable
  String myString = 'Good morning George!'; // String variable
  bool myBool = true; // Boolean variable
  List<int> myList = [1, 2, 3, 4, 5]; // List of integers

  // Print each variable to the console
  print('int: $myInt');
  print('double: $myDouble');
  print('String: $myString');
  print('bool: $myBool');
  print('List: $myList');

  // Type Conversion Example
  String numberString = '123'; // A String representing a number
  convertAndDisplay(numberString); // Call function to convert String to int and double and print the result

  // Control Flow Examples
  checkNumber(10); // Check if the number is positive, negative, or zero
  checkEligibility(17); // Check if a person is eligible to vote

  printDayOfWeek(3); // Print the day of the week based on an integer

  // Loops Examples
  printNumbers1to10(); // Print numbers from 1 to 10 using a for loop
  printNumbers10to1(); // Print numbers from 10 to 1 using a while loop
  printNumbers1to5(); // Print numbers from 1 to 5 using a do-while loop

  // Complex Example: Combining Data Types and Control Flow
  List<int> numbers = [3, 15, 23, 150, 2, 8]; // A list of integers
  complexExample(numbers); // Call the function to perform actions based on the list values
}

// Type Conversion Functions
// Convert a String to an int
int stringToInt(String str) => int.parse(str);

// Convert a String to a double
double stringToDouble(String str) => double.parse(str);

// Convert an int to a String
String intToString(int num) => num.toString();

// Convert an int to a double
double intToDouble(int num) => num.toDouble();

// Function to Convert and Display the converted values
void convertAndDisplay(String str) {
  int convertedInt = stringToInt(str); // Convert String to int
  double convertedDouble = stringToDouble(str); // Convert String to double

  // Print the converted values
  print('Converted String "$str" to int: $convertedInt');
  print('Converted String "$str" to double: $convertedDouble');
}

// If-Else Statement: Check if a number is positive, negative, or zero
void checkNumber(int number) {
  if (number > 0) { // If the number is greater than 0
    print('$number is positive.');
  } else if (number < 0) { // If the number is less than 0
    print('$number is negative.');
  } else { // If the number is 0
    print('$number is zero.');
  }
}

// If-Else Statement: Check if a person is eligible to vote based on age
void checkEligibility(int age) {
  if (age >= 18) { // If age is 18 or older
    print('Person is eligible to vote.');
  } else { // If age is less than 18
    print('Person is not eligible to vote.');
  }
}

// Switch Case: Print the day of the week based on the number provided
void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default: // If the number is not between 1 and 7
      print('Invalid day.');
  }
}

// For loop: Print numbers from 1 to 10
void printNumbers1to10() {
  for (int i = 1; i <= 10; i++) { // Loop from 1 to 10
    print(i); // Print each number
  }
}

// While loop: Print numbers from 10 to 1
void printNumbers10to1() {
  int i = 10; // Start with 10
  while (i >= 1) { // Loop while i is greater than or equal to 1
    print(i); // Print the current value of i
    i--; // Decrease i by 1 in each iteration
  }
}

// Do-while loop: Print numbers from 1 to 5
void printNumbers1to5() {
  int i = 1; // Start with 1
  do {
    print(i); // Print the current value of i
    i++; // Increase i by 1 in each iteration
  } while (i <= 5); // Continue loop while i is less than or equal to 5
}

// Complex Example: Combining Data Types and Control Flow
void complexExample(List<int> numbers) {
  for (int num in numbers) { // Iterate through each number in the list
    print('Number: $num'); // Print the number

    // Check if the number is even or odd using the modulus operator
    if (num % 2 == 0) {
      print('$num is even.');
    } else {
      print('$num is odd.');
    }

    // Categorize the number using if-else for ranges since Dart switch doesn't support range cases
    if (num >= 1 && num <= 10) {
      print('$num is a small number.');
    } else if (num >= 11 && num <= 100) {
      print('$num is a medium number.');
    } else {
      print('$num is a large number.');
    }
  }
}
