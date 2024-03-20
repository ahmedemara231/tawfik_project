import 'package:flutter/material.dart';
import 'package:tawfik_project/constants.dart';
import 'package:tawfik_project/modules/myText.dart';
import 'package:tawfik_project/profile/profile_options.dart';

import 'help_options.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  
  final List<Widget> options1 =
  [
    ProfileOptions(icon: Icons.person, optionName: 'البيانات الشخصية'),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ProfileOptions(icon: Icons.money, optionName: 'محفظتي'),
    ),
    ProfileOptions(icon: Icons.money_sharp, optionName: 'طرق الدفع'),
  ];

  final List<Widget> options2 =
  [
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          ProfileOptions(icon: Icons.hotel_sharp, optionName: 'حجوزات الفنادق والطيران'),
          Container(
            height: 5,
            color: Colors.grey,
          )
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          ProfileOptions(icon: Icons.rate_review_outlined, optionName: 'التقييم'),
          Container(
            height: 5,
            color: Colors.grey,
          )
        ],
      ),
    ),
  ];

  List<HelpOptions> helpOptions = 
  [
    HelpOptions(optionName: null, optionIcon: Icons.question_mark, optionColor: Constants.blueAppColor, text: 'الاسئلة المكررة'),
    HelpOptions(optionName: null, optionIcon: Icons.chat, optionColor: Constants.blueAppColor, text: 'دردشة مباشرة'),
    HelpOptions(optionName: 'واتساب', optionIcon: Icons.add, optionColor: Colors.orange, text: '010555558822'),
    HelpOptions(optionName: 'اتصل بنا', optionIcon: Icons.phone, optionColor: Colors.orange, text: '01225558999')
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.blueAppColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(flex: 4,),
                  Column(
                    children: [
                      Image.asset('images/user--profile_1_.png'),
                      MyText(text: 'مرحيا بك يا ZZZZZZZ',color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: MyText(text: 'ZZZZZZZZZZZ@gmail.com',color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset('images/Layer 1.png'),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(text: 'ملف شخصي',fontSize: 25,fontWeight: FontWeight.w500,color: Constants.blueAppColor,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            children: List.generate(
                                options1.length,
                                    (index) => InkWell(
                                      onTap: () {},
                                        child: options1[index]),
                            ),
                          ),
                        ),
                        MyText(text: 'رحلاتي',fontSize: 25,fontWeight: FontWeight.w500,color: Constants.blueAppColor,),
                        Column(
                          children: List.generate(
                            options2.length,
                                (index) => InkWell(
                                onTap: () {},
                                child: options2[index]),
                          ),
                        ),
                        MyText(text: 'الدعم والمساعدة',fontSize: 25,fontWeight: FontWeight.w500,color: Constants.blueAppColor,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height/4,
                              child: GridView.builder(
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2.8,crossAxisSpacing: 10,mainAxisSpacing: 10),
                                itemBuilder:(context, index) => InkWell(
                                  onTap: () {},
                                    child: helpOptions[index]),
                                itemCount: helpOptions.length,
                              ),
                        )
                    ),
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Constants.orangeAppColor,
                              ),
                              child: SizedBox(
                                width: 200,
                                  child: Center(child: MyText(text: 'تسجيل الخروج',color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500,)))),
                        )
                        ]
                    ),
                  ),
              )
          ),
          ]
         ),
        )
      ),
    );
  }
}
