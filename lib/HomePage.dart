import 'package:flutter/material.dart';
import 'DetailsPage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> recipes = [
    {
      'name': 'Alfredo Pasta',
      'info': 'Ingredients: 8 ounce pasta, 4 tablespoons butter, 2 cloves garlic, 1½ cups milk, 1 cup heavy cream, ½ cup Parmesan cheese, ¼ teaspoon salt, ¼ teaspoon pepper, 2 tablespoons fresh parsley\nInstructions: Cook the pasta according to the package instructions. Melt the butter in a large skillet over medium high heat. Add the garlic and cook for 30 seconds, or until fragrant. Pour in the milk and cream. Stir consistently to avoid burning on the bottom of the pan until the mixture comes to a boil. Turn the heat down to medium, and mix in the parmesan cheese, salt, and pepper. Adjust the seasoning to your own taste. Remove the pan from the heat and mix in the cooked pasta until the sauce begins to thicken. Garnish with parsley, and serve.',
      'from': 'https://cravinghomecooked.com/easy-pasta-alfredo/'
    },
    {
      'name': 'Fried Rice',
      'info': 'Ingredients: Cooked chilled rice, eggs, carrots, onions, green onions, peas, garlic, soy sauce, oyster sauce, toasted sesame oil, and butter.\nInstructions: Start by scrambling your eggs. Once done, set them on a place and saute your veggies and garlic until soft and cooked through. Then set the stove to high heat and add the veggies with soe butter, then add your rice, soy sauce, and oyster sauce. Stir to combine until the rice and veggies start to brown slightly.',
      'from': 'https://www.gimmesomeoven.com/fried-rice-recipe/'
    },
    {
      'name': 'Steak Bites',
      'info': 'Ingredients: Steak, butter, fresh garlic, salt & pepper, parsley, green onion, and red pepper flakes.\nInstructions: Cut the steak into small bite size pieces and season with salt, pepper, and red pepper flakes. Heat a large skillet over medium-high heat and then add avocado oil to the hot skillet. Next, add the steak, in a single layer, to the pan. Cook the steak bites for three or four minutes until brown, stirring occasionally. You may have to do this in batches depending on the size of your skillet. Once the steak is brown, remove it from the pan. Remove any excess water from the skillet and then add the butter or ghee to the pan. Next add the minced garlic and saute for one minute.',
      'from': 'https://allthehealthythings.com/garlic-butter-steak-bites/'
    },
    {
      'name': 'Garlic Butter Salmon',
      'info': 'Ingredients: salmon filets, garlic, butter, lemon, and parsley.\nInstructions: Season salmon with salt and pepper, Sear the curved presentation side of the salmon (ie. put it in upside down) and cook for 3 minutes until it is nicely golden. Butter and garlic – Turn the salmon, cook another minute, then add the butter. As soon as the butter melts, add the garlic; then Baste, baste, baste – Immediately after you’ve added the garlic and even before it has had a chance to go golden, start basting. To do this, tilt the pan slightly so the butter pools on one side. Then scoop up the butter using a large spoon and spoon it over the salmon. The garlic will cook as you baste so by the time the salmon is done, the garlic is perfectly golden. Baste 1 1/2 minutes – Baste for 1 1/2 minutes in total, which should be a total cooking time of around 3 minutes for the second side (1 minute cooking after turning + 30 seconds butter melting time + 1 1/2 minutes basting). Target an internal temperature of 50°C/122°F for medium-rare (optimum juiciness), with the thermometer inserted into the middle of the thickest part of the salmon. See below for more information on the internal temperature of cooked salmon; and Rest 3 minutes, then serve with the garlic butter in the pan!',
      'from': 'https://www.recipetineats.com/garlic-butter-salmon-recipe/'
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe List'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    recipeName: recipes[index]['name']!,
                    recipeDetails: recipes[index]['details']!,
                    recipeAttribution: recipes[index]['from']!,
                  )
                )
              );
            }
          );
      },
      ),
    );
  }
}

