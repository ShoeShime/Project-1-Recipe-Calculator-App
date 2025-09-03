// FIXME: Import material.dart and recipe.dart
import 'package:flutter/material.dart';
import "recipe.dart";

// FIXME: Create RecipeDetail StatefulWidget that takes a Recipe parameter
class RecipeDetail extends StatefulWidget{
  final Recipe recipe;

  RecipeDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  State<RecipeDetail> createState() {
    return _RecipeDetailState();
  }
}

// FIXME: Create _RecipeDetailState class
class _RecipeDetailState extends State<RecipeDetail>{
  // FIXME: Add _sliderVal state variable to track serving multiplier
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context){
    // FIXME: Build Scaffold with AppBar showing recipe label
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.recipe.label)
      ),
        // FIXME: Add SafeArea with Column containing:
//         - Image widget using recipe.imageUrl
//         - Text widget showing recipe label
//         - Expanded ListView.builder for ingredients
//         - Slider to adjust serving size
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  widget.recipe.imageUrl
                ),
              ),
            ),
            const SizedBox(
              height: 4
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(
                fontSize: 18
              ),
            ),
            // TODO: Add expanded
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index){
                  // FIXME: In ListView.builder, calculate adjusted ingredient quantities
                  final ingredient = widget.recipe.ingredients[index];

                  return Text(
                    '${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}'
                  );
                },
              ),
            ),
            // FIXME: Configure Slider with min:1, max:10, and update _sliderVal on change
            Slider(
              min:1,
              max:10,
              divisions: 9,
              label: '${_sliderVal * widget.recipe.servings} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue){
                setState((){
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            )
          ]
        )
      )
    );
  }
}