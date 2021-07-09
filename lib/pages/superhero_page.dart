import 'package:flutter/material.dart';
import 'package:superheroes/pages/main_page.dart';
import 'package:superheroes/resources/superheroes_colors.dart';

class SuperheroPage extends StatelessWidget {
  const SuperheroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SuperheroesColors.background,
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "Batman",
            style: TextStyle(
              color: SuperheroesColors.textColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
