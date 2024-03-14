
import 'package:flutter/material.dart';
import 'package:tawfik_project/modules/myText.dart';

class TravelModel extends StatelessWidget {
  const TravelModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: 150,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('images/home_upper_image.png',),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: MyText(text: 'عزبة البط',color: Colors.white,fontSize: 16,),
          ),
          TextButton(onPressed: () {}, child: MyText(text: 'تفاصيل اكتر..',color: Colors.green[800],fontSize: 15,fontWeight: FontWeight.bold,))
        ],
      ),
    );
  }
}
