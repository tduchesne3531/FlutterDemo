void main() {
  //Typage classique
  String hello = "Hello World";

  print(hello);

  //Typage optionnel
  var name = "Michel";
  name = "Thomas";


  const age = 18;

  String? city = null;

  print(city?.toUpperCase());
}