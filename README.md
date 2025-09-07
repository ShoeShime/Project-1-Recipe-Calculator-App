# Recipe Calculator - Flutter Project

## Recipe Calculator Demo

The completed application should match these visual examples

### 🍲 Recipe Calculator Demo
![Recipe Calculator Demo](finished-app-visuals/RecipeCalculatorApp.gif)

## Project Overview
A Flutter-based recipe calculator application that displays various recipes, allows users to view detailed ingredient lists, and adjust serving sizes with dynamic quantity calculations.

## Features
- Recipe gallery with image cards
- Detailed recipe view with ingredients
- Interactive serving size slider
- Dynamic ingredient quantity adjustment
- Clean, responsive UI design

## Project Structure
```
recipe_calculator/
├── assets/
│   ├── spaghetti_and_meatballs.jpg
│   ├── tomato-soup-recipe.jpg
│   ├── Grilled-Cheese.jpg
│   ├── chocolate-chip-cookies.jpg
│   ├── Taco-Salad.jpg
│   └── Hawaiian-Pizza.jpg
├── lib/
│   ├── main.dart
│   ├── recipe.dart
│   └── recipe_detail.dart
├── pubspec.yaml
└── ... (other Flutter project files)
```

## Setup Instructions

### Step 1: Project Initialization
Create a new Flutter project and navigate to its directory.

### Step 2: Asset Configuration
1. Create an `assets` folder in your project root
2. Add all recipe images to this folder
3. Update `pubspec.yaml` to include the assets directory under the flutter section

### Step 3: Recipe Data Model Implementation
Create a new Dart file for the recipe data model with:
- A Recipe class with properties for label, image URL, servings, and ingredients
- An Ingredient class with quantity, measure, and name properties
- A static list of sample recipes with their respective ingredients

### Step 4: Recipe Detail Page Implementation
Create a Dart file for the recipe detail screen with:
- A stateful widget that accepts a Recipe parameter
- An image display area for the recipe
- A list view for ingredients that updates based on serving size
- A slider control to adjust serving quantities

### Step 5: Main Application Implementation
Update the main application file to:
- Change the app theme to use a green color scheme
- Replace the default counter content with a list view of recipe cards
- Implement navigation to the detail page when a recipe card is tapped
- Create a recipe card widget with image and label display

### Step 6: Image Assets
Add the required recipe images to the assets folder with the exact filenames referenced in the recipe data model.

### Step 7: Build and Run
Execute the application to verify all components work correctly together.

## Implementation Notes
- Ensure all image references match the actual filenames in your assets folder
- The serving slider should dynamically update ingredient quantities
- Recipe cards should display both image and label information
- Navigation should work seamlessly between the list and detail views

## Troubleshooting
- If images don't appear, verify the asset declarations in pubspec.yaml
- If the app doesn't build, check for correct import statements
- Ensure all class and variable names match across files

Your Recipe Calculator app is now ready to use!