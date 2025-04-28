

void main() {
  displayMessage("Coucou", 5);
  displayMessage2("Hey", number: 8);
  displayMessage3(number : 3, message: getMessage("Bonjour"));
}

void displayMessage(String message, int number) {

  for (int i = 0; i < number; i++) {
    print(message);
  }
}

void displayMessage2(String message, { int number = 0 }) {

  for (int i = 0; i < number; i++) {
    print(message);
  }
}

void displayMessage3({required String message,  int number = 1}) {

  for (int i = 0; i < number; i++) {
    print(message);
  }
}

String getMessage(String message) {
  return message;

}