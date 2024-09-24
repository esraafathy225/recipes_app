import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_recipes_app/cubits/recipe_cubit.dart';
import 'package:new_recipes_app/screens/home_screen.dart';
import 'package:new_recipes_app/services/recipe_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => RecipeCubit(),
        child: HomeScreen(),
      ),
    );
  }
}
