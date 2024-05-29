import 'package:flutter/material.dart';
import 'package:mindingherdia/Model/learn_model.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  final List<LearnModel> recipes = [
    LearnModel(imagePath: 'assets/Learn/enery_diet/1.png', title: 'Energy & Diet', onTap: () {}),
    LearnModel(imagePath: 'assets/Learn/food_reciepe/1.jpg', title: 'Food & Recipes', onTap: () {}),
    LearnModel(imagePath: 'assets/Learn/medication/13.jpg', title: 'Medication', onTap: () {}),
    LearnModel(imagePath: 'assets/Learn/healthy_gut/1.jpg', title: 'Healthy Guts', onTap: () {}),
    LearnModel(imagePath: 'assets/Learn/50_fun_facts/1.jpg', title: '50 Fun Facts', onTap: () {}),
    LearnModel(imagePath: 'assets/Learn/feast_on_health/1.jpg', title: 'Feast on Health', onTap: () {}),
    LearnModel(imagePath: 'assets/Learn/mental_health/1.jpg', title: 'Mental Health', onTap: () {}),
    LearnModel(imagePath: 'assets/Learn/nutrition/1.jpg', title: 'Nutrition', onTap: () {}),
    LearnModel(imagePath: 'assets/Learn/weekly_meal/1.png', title: 'Weekly Meal', onTap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Learn',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: recipes.length,
              itemBuilder: (ctx, index) {
                return GridTile(
                  footer: GridTileBar(
                    backgroundColor: Colors.black87,
                    title: Text(
                      recipes[index].title,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  child: Image.asset(
                    recipes[index].imagePath,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
