import 'package:flutter/material.dart';
// FIXME: Import the recipe.dart file to access Recipe class
// FIXME: Import the recipe_detail.dart file for navigation to detail page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // FIXME: Create a theme instance to customize the app's color scheme
    return MaterialApp(
      title: 'Recipe Calculator',
      // FIXME: Update theme with custom color scheme using seedColor
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // FIXME: Remove counter-related code as it's not needed for recipe app
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // FIXME: Replace Center widget with SafeArea and ListView.builder
      // FIXME: ListView.builder should use Recipe.samples.length for itemCount
      // FIXME: Use GestureDetector in itemBuilder to handle taps on recipe cards
      // FIXME: Implement navigation to RecipeDetail when a recipe card is tapped
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // FIXME: Remove floatingActionButton as it's not needed
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      )
    );
  }

// FIXME: Create buildRecipeCard method that returns a Card widget
// FIXME: Card should contain Image, SizedBox, and Text widgets
// FIXME: Image should use recipe.imageUrl as AssetImage
// FIXME: Text should display recipe.label with custom styling
}