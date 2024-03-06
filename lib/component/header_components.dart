import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:learn_code_day_2/AppColors/appColos.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Welcome", style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500,


              ),),
              Text("You Have got ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: AppColor.appGreen,
                ),
              ),
              Text(" 4 task's today",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: AppColor.appRedLight,
                ),
              ),
            ],
          ),

          const badges.Badge(
            badgeContent: Text('3', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
            child: Image(
              image: AssetImage('assets/images/profile.png'),
            ),
          ),


        ],
      ),
    );
  }
}
