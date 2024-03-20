import 'package:flutter/material.dart';
import 'package:tawfik_project/constants.dart';
import 'package:tawfik_project/modules/myText.dart';

class ProfileOptions extends StatelessWidget {

  IconData icon;
  String optionName;

  ProfileOptions({super.key,
    required this.icon,
    required this.optionName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: Constants.blueAppColor,size: 30,),
        MyText(text: optionName,fontWeight: FontWeight.w500,color: Constants.blueAppColor,fontSize: 20,),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios,size: 16,)
      ],
    );
  }
}
