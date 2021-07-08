import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superheroes/resources/superheroes_colors.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const ActionButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: UnconstrainedBox(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 20,
          ),

          // width: 200,
          // height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: SuperheroesColors.backgroundButton,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: SuperheroesColors.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
