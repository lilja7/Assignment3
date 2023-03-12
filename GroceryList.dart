import 'dart:convert';
import 'dart:io';

void main() {
  //Create an empty list to store the grocery items.
  List<String> myGroceryList = [];

  //If the user chooses to end the program, exit the menu loop and end the program.
  while (true) {
    print('Choose an option:');
    print('1. Add item to the grocery list!');
    print('2. View the grocery list.');
    print('3. Exit');

    String input = stdin.readLineSync()!;
    int choice = int.parse(input);

    //Create a menu system that allows the user to choose between adding an item to the list, viewing the list, or ending the program.
    switch (choice) {
      case 1:
        print('Enter item to add:');
        String item = stdin.readLineSync()!;
        addItemToMyList(item, myGroceryList);
        break;
      case 2:
        viewMyList(myGroceryList);
        break;
      case 3:
        exit(0);
        break;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

//Create a method called "addItemToList" that takes an item as input and adds it to the list.
void addItemToMyList(String item, List<String> myList) {
  myList.add(item);
  print('Item added to list.');
}

//If the user chooses to view the list, display the contents of the list.
void viewMyList(List<String> myList) {
  if (myList.isEmpty) {
    print('The list is empty :(');
  } else {
    print('List contents:');
    for (int i = 0; i < myList.length; i++) {
      print('${i + 1}. ${myList[i]}');
    }
  }
}


