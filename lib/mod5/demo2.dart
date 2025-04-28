import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo layout",
      home: AppHomePage(
        title: 'Demo Widget de Contenu',
      ),
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
        body: Column(
          children: [
            Text(
              "Hello Michel",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 36),
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Cliquez moi"),
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.amber))),
            OutlinedButton(onPressed: () {}, child: Text("Cliquez pas")),
            FilledButton(onPressed: () {}, child: Text("Aucune idée")),
            Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Laravel.svg/langfr-140px-Laravel.svg.png"),
            Image.asset("assets/images/pikachu.jpg")
          ],
        ));
  }
}
