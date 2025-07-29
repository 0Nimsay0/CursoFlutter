import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  _MainPageStates createState() => _MainPageStates();
}

class _MainPageStates extends State<MainPage> {
  @override
  int likes = 0;
  int likes2 = 0;
  int resul = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Soma de Gambiarra'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RawMaterialButton(
              child: Text('Primeiro Numero:'),
              fillColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              constraints: BoxConstraints.tightFor(height: 50.0, width: 200.0),
              onPressed: () {
                setState(() {
                  likes++;
                });
              },
            ),
            Text('$likes'),
            RawMaterialButton(
              fillColor: const Color.fromARGB(255, 68, 243, 33),
              child: Text('Segundo Numero'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              constraints: BoxConstraints.tightFor(height: 50.0, width: 200.0),
              onPressed: () {
                setState(() {
                  likes2++;
                });
              },
            ),
            Text('$likes2'),
            Text('--------------------------------------------------'),
            Text('resultado $resul'),
          ],
        ),
      ),

      floatingActionButton: RawMaterialButton(
        fillColor: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        constraints: BoxConstraints.tightFor(height: 50.0, width: 100.0),

        onPressed: () {
          setState(() {
            resul = likes2 + likes;
          });
        },

        child: Text('Resultado'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
