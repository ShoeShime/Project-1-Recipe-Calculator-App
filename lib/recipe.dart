// FIXME: Create Recipe class with required properties
class Recipe{
  String label;
  String imageUrl;
  // FIXME: Add servings property of type int
  int servings;
  // FIXME: Add ingredients property as List<Ingredient>
  List<Ingredient> ingredients;

  // FIXME: Create constructor with all required parameters
  Recipe(
      this.label,
      this.imageUrl,
      this.servings,
      this.ingredients
  );

  // FIXME: Add static list of sample recipes with complete data
  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/spaghetti_and_meatballs.jpg',
      4,
      [
        Ingredient(1, "box", "Spaghetti"),
        Ingredient(4, "", "Frozen Meatballs"),
        Ingredient(0.5, "jar", "sauce")
      ]
    ),
    Recipe(
      'Tomato Soup',
      'assets/tomato-soup-recipe.jpg',
      2,
      [
        Ingredient(1, "can", "Tomato Soup")
      ]
    ),
    Recipe(
      'Grilled Cheese',
      'assets/Grilled-Cheese.jpg',
      1,
      [
        Ingredient(2, "slices", "Cheese"),
        Ingredient(2, "slices", "Bread")
      ]
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/chocolate-chip-cookies.jpg',
      24,
      [
        Ingredient(4, "cups", "flour"),
        Ingredient(2, "cups", "sugar"),
        Ingredient(0.5, "cups", "chocolate chips")
      ]
    ),
    Recipe(
      'Taco Salad',
      'assets/Taco-Salad.jpg',
      1,
      [
        Ingredient(4, "oz", "nachos"),
        Ingredient(3, "oz", "taco meat"),
        Ingredient(0.5, "cup", "cheese"),
        Ingredient(0.25, "cup", "chopped tomatoes")
      ]
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/Hawaiian-Pizza.jpg',
      4,
      [
        Ingredient(1, "item", "pizza"),
        Ingredient(1, "cup", "pinapple"),
        Ingredient(8, "oz", "ham")
      ]
    )
  ];
}

// FIXME: Create Ingredient class with quantity, measure, and name properties
class Ingredient{
  double quantity;
  String measure;
  String name;

  // FIXME: Add constructor for Ingredient class
  Ingredient(
      this.quantity,
      this.measure,
      this.name
  );
}