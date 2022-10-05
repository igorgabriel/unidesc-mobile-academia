import 'package:flutter/material.dart';

void main() {
  runApp(const AcademiaWidget());
}

class AcademiaWidget extends StatefulWidget {
  const AcademiaWidget({super.key});

  @override
  State<AcademiaWidget> createState() => _AcademiaWidgetState();
}

class _AcademiaWidgetState extends State<AcademiaWidget> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
    print("increment: $count");
  }

  void decrement() {
    setState(() {
      count--;
    });
    print("decrement: $count");
  }

  bool get isEmpty => count == 0;
  bool get isFull => count >= 30;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/background.jpeg"))),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Text(
              isFull ? "Academia Lotada!" : "Entrada liberada",
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Text(
                "$count alunos",
                style: const TextStyle(
                  fontSize: 55,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: const Size(120, 120),
                      backgroundColor: Colors.lightBlue),
                  onPressed: isFull ? null : increment,
                  child: const Text(
                    "Entrou",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
              const SizedBox(
                width: 60,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: const Size(120, 120),
                      backgroundColor: Colors.lightBlue),
                  onPressed: isEmpty ? null : decrement,
                  child: const Text(
                    "Saiu",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
            ],
          )
        ]),
      ),
    ));
  }
}
