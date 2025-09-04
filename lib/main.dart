import 'package:flutter/material.dart';

/*
The purpose of this system is to import the flutter material design library widgets, UI design (Google's design system)

import - dart keyword to import external libraries

package:flutter/ - refers to material package that comes with flutter widgets

this is essential for building flutter apps with standard UI
*/

void main() {
  runApp(const MyApp());
}

/*
Entry point of the flutter app

void main() - main function starting point of any dart program

runApp() - flutter function that initializes the app and attaches the root widgets
(MyApp) to the screen

const MyApp() - creates an instance of the MyApp widget, marked const for
compile-time optimization (immutable configuration)
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override // indicates method overrides StatelessWidget build
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Fix class name and extend StatelessWidget properly
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://m.media-amazon.com/images/I/71m+TO40vWL._AC_SL1200_.jpg',
              width: 500,
              height: 500,
            ),
            const SizedBox(height: 16),
            const Text('Demon Slayer', style: TextStyle(fontSize: 32),),
            const Text(
              'Demon Slayer follows Tanjiro Kamado, a kind boy in Taishō-era Japan, whose family is slaughtered by a demon, '
                  'leaving his sister, Nezuko, as the sole survivor but transformed into a demon herself. Tanjiro sets out '
                  'on a dangerous journey to become a Demon Slayer, seeking to avenge his family and find a cure to restore '
                  'Nezuko to her human form.',
              style: TextStyle(fontSize: 20),

            ),
          ],
        ),
      ),
    );
  }
}

/*
Defined as the root widget (main container) for the app

class MyApp extends StatelessWidget - MyApp is a custom class

StatelessWidget - base class for widgets that do not hold mutable state

const MyApp({super.key}) - constructor super.key passes an optional key to the base class

key uniquely identifies widgets tree

const - ensures immutable constructor

MaterialApp:
- sets up app structure: navigation, themes, home screen
- title - visible in the task switcher
- theme - ThemeData(primarySwatch: Colors.blue) sets primary color color palette
- home - MyHomePage() sets an initial screen
*/
