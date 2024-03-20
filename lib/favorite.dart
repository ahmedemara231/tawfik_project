import 'package:flutter/material.dart';
import 'package:tawfik_project/constants.dart';
import 'package:tawfik_project/modules/myText.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
            ),
            child: AppBar(
              backgroundColor: Constants.blueAppColor,
              title: MyText(text: 'الخيارات المفضلة',color: Colors.white,),
            ),
          ),
          const Spacer(),
          MyText(text: 'احفظ اماكن الاقامة المفضلة والاماكن التي تود زيارتها في وقت لاحق',color: Constants.blueAppColor,fontSize: 16,),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Constants.blueAppColor),
              child: MyText(text: 'ابدأ بحثك',color: Colors.white,)),

          const Spacer()
        ],
      ),
    );
  }
}
