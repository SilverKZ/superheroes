import 'package:flutter/material.dart';
import 'package:superheroes/resources/superheroes_colors.dart';

import 'action_button.dart';

class InfoWithButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final String assetImage;
  final double imageHeight;
  final double imageWidth;
  final double imageTopPadding;

  const InfoWithButton({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.assetImage,
    required this.imageHeight,
    required this.imageWidth,
    required this.imageTopPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                width: 108,
                height: 108,
                decoration: BoxDecoration(
                  color: SuperheroesColors.backgroundIcon,
                  shape: BoxShape.circle,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: imageTopPadding),
                child: Image.asset(
                  assetImage,
                  width: imageWidth,
                  height: imageHeight,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              color: SuperheroesColors.textColor,
              fontSize: 32,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            subtitle.toUpperCase(),
            style: TextStyle(
              color: SuperheroesColors.textColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 30),
          ActionButton(
            text: buttonText,
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
