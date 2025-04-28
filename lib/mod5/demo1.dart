import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo Layout",
      home: AppHomePage(),
    );
  }
}

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Demo Layout"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Alcool",
                  style: TextStyle(
                      fontSize: 36, color: Colors.pinkAccent.shade400)),
              SizedBox(height: 2500),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Cigarettes"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text("Poppers"), Text("5 Euros")],
              ),
              FlexWidget()
            ],
          ),
        ));
  }
}

class FlexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Flex 1"),
        Text("Flex 2"),
      ],
    );
  }
}
