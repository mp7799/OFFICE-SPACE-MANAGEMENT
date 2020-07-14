import 'package:flutter/material.dart';
import 'MobileLayout/MobileHomePage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth>500){
        return MobileHomePage();
      }
      else{
        return MobileHomePage();
      }
    });
  }
}
