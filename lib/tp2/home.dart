import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo layout",
      home: AppHomePage(title: 'Demo Widget de Contenu',),
    );
  }
}

class AppHomePage extends StatelessWidget {
  String title;

  AppHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Article(label: "Clavier", price: 96),
            Article(label: "Ecran", price: 55),
            Article(label: "Souris", price: 12),
            Article(label: "Stylo", price: 48),
          ],
        ),
    );
  }
}

class Article extends StatefulWidget {

  String label;
  double price;


  Article({required this.label, required this.price});

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {

  int quantity = 0;
  double total = 0;

  void addQuantity() {
    setState(() {
      quantity++;
      calculateTotal();
    });
  }

  void removeQuantity() {
    setState(() {
      quantity--;
      calculateTotal();
    });
  }

  void calculateTotal() {
    setState(() {
      total = quantity * widget.price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(widget.label, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(widget.price.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ElevatedButton(onPressed: addQuantity, style: ElevatedButton.styleFrom(backgroundColor: Colors.blue), child: Icon(Icons.add, color:Colors.white)),
              SizedBox(
              width: 50,
              child: Text(quantity.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
              TextButton(onPressed: removeQuantity, style: ElevatedButton.styleFrom(backgroundColor: Colors.blue), child: Icon(Icons.remove, color:Colors.white)),
              SizedBox(width: 50,child: Text(total.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
            ],
          ),
        ],
      ),
    );
  }
}