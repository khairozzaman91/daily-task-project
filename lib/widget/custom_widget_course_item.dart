import 'package:flutter/material.dart';

class CourseItemWidget extends StatelessWidget {
  const CourseItemWidget({
    super.key,
    required this.cardColor,
    required this.cardTitle,
    required this.cardImagePath});


  final Color cardColor;
  final String cardTitle;
  final String cardImagePath;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 152,


      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: cardColor,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
          child: Column(
            children: [
              //image

              Image.asset(cardImagePath,
                width: 40,
              ),
             //const Image(image: AssetImage('assets/icons/math.png')),

              //title
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(cardTitle,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

