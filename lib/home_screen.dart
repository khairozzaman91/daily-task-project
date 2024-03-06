import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:learn_code_day_2/AppColors/appColos.dart';
import 'package:learn_code_day_2/component/course_component.dart';
import 'package:learn_code_day_2/component/header_components.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(

      ),
    body:  const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HeaderComponent(),
        coursecomponent(),
      ],
    ),




      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white70,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          destinations:const [
            NavigationDestination(icon: Icon(Icons.home), label: ''),
            NavigationDestination(icon: Icon(Icons.group), label: ''),
            NavigationDestination(icon: Icon(Icons.person), label: ''),
            NavigationDestination(icon: Icon(Icons.search), label: ''),
          ]),
    );
  }
}



