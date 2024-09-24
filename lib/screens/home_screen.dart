import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_recipes_app/cubits/recipe_cubit.dart';
import 'package:new_recipes_app/models/recipe_model.dart';

import '../widgets/recipe_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFFE23E3E), // Base Color
                Color(0xFFFF6B6B), // Lighter Red
                Color(0xFFFFB3B3),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
        ),
        title: const Text(
          'Recipe App',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<RecipeCubit,List<Recipe>>(
        builder: (context,state){
          return ListView.builder(
              itemCount: state.length,
              itemBuilder: (context, index) {
                return RecipeWidget(recipe:state[index] ,onTap: (){},);
              });
        },
      ),
    );
  }
}
