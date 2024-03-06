import 'package:flutter/material.dart';
import 'package:learn_code_day_2/AppColors/appColos.dart';
import 'package:learn_code_day_2/style/asset-manager.dart';
import 'package:learn_code_day_2/widget/custom_widget_course_item.dart';

class coursecomponent extends StatelessWidget {
  const coursecomponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
        child:Text('Course',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        ),

       Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text("Your running subject's",
           style: TextStyle(
             fontSize: 15,
             fontWeight: FontWeight.w500,
             color: Colors.black.withOpacity(0.6),
           ),
         ),

       ) ,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                child: CourseItemWidget(
                  cardColor: AppColor.appRedLight,
                  cardTitle: 'Mathmatics',
                  cardImagePath: AssetManager.MathIcons,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: CourseItemWidget(
                  cardColor: AppColor.yellowLight,
                  cardTitle: 'Chemistry',
                  cardImagePath: AssetManager.chemistryIcons,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: CourseItemWidget(
                  cardColor: AppColor.pinkLight,
                  cardTitle: 'Physics',
                  cardImagePath: AssetManager.physicsIcons,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: CourseItemWidget(
                  cardColor: AppColor.blueAccent,
                  cardTitle: 'Biology',
                  cardImagePath: AssetManager.biologyIcons,
                ),
              ),

            ],
          ),
        ),



      ],
    );
  }
}
