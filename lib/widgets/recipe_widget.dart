import 'package:flutter/material.dart';
import 'package:new_recipes_app/models/recipe_model.dart';

class RecipeWidget extends StatelessWidget {
  final Recipe recipe;
  final VoidCallback onTap;

  const RecipeWidget({super.key, required this.recipe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              recipe.image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Positioned(
              top: 15,
              left: 15,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      recipe.rating.toString(),
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 15,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text('${recipe.ingredients.length} Ingredients',
                      style: const TextStyle(color: Colors.white, fontSize: 14))
                ],
              )),
          Positioned(
              bottom: 15,
              right: 15,
              child: Text(
                '${recipe.caloriesPerServing} Kcal',
                style: const TextStyle(color: Colors.white),
              )),
          const Positioned(
            top: 15,
            right: 15,
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
