import 'package:flutter/material.dart';
// FIXME: Import the recipe.dart file to access Recipe class
import "recipe.dart";
// FIXME: Import the recipe_detail.dart file for navigation to detail page
import "recipe_detail.dart";

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // FIXME: Create a theme instance to customize the app's color scheme
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Recipe Calculator',
      // FIXME: Update theme with custom color scheme using seedColor
      theme: theme.copyWith(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.greenAccent,
          )
      ),
      home: const MyHomePage(
        title: "Recipe Calculator",
      ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // FIXME: Replace Center widget with SafeArea and ListView.builder
      body: SafeArea(
        // FIXME: ListView.builder should use Recipe.samples.length for itemCount
          child: ListView.builder(
              itemCount: Recipe.samples.length,
              itemBuilder: (BuildContext context, int index){
                // FIXME: Use GestureDetector in itemBuilder to handle taps on recipe cards
                return GestureDetector(
                    onTap: (){
                      // FIXME: Implement navigation to RecipeDetail when a recipe card is tapped
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context){
                                // TODO: Replace return with return RecipeDetail()
                                return RecipeDetail(recipe: Recipe.samples[index]);
                              }
                          )
                      );
                    },
                    child: buildRecipeCard(Recipe.samples[index])
                );
              }
          )
      ),
    );
  }


  // FIXME: Create buildRecipeCard method that returns a Card widget
  Widget buildRecipeCard(Recipe recipe){
    // FIXME: Card should contain Image, SizedBox, and Text widgets
    return Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              children: <Widget>[
                // FIXME: Image should use recipe.imageUrl as AssetImage
                Image(
                    image: AssetImage(
                        recipe.imageUrl
                    )
                ),
                const SizedBox(
                  height: 14.0,
                ),
                // FIXME: Text should display recipe.label with custom styling
                Text(
                    recipe.label,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Palatino",
                    )
                )
              ]
          ),
        )
    );
  }
}