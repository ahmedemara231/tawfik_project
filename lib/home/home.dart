import 'package:flutter/material.dart';
import 'package:tawfik_project/constants.dart';
import 'package:tawfik_project/home/travel_model.dart';
import 'package:tawfik_project/modules/myText.dart';

class Home extends StatelessWidget {
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
              child: Align(
                alignment: Alignment.topCenter,
                  child: Image.asset('images/home_upper_image.png',)),
          ),
          Positioned(
            top: 100,
            right: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/omad.png'),
                Image.asset('images/n_letter.png'),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 125,right: 5,left: 5),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyText(text: 'استكشف الرحلات',fontSize: 20,fontWeight: FontWeight.w500,color: Constants.blueAppColor,),
                        const Spacer(),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => const TravelModel(),
                          separatorBuilder: (context, index) => const SizedBox(width: 12,),
                          itemCount: 3
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        children: [
                          MyText(text: 'استكشف فنادق',fontSize: 20,fontWeight: FontWeight.w500,color: Constants.blueAppColor,),
                          const Spacer(),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 200,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => const TravelModel(),
                          separatorBuilder: (context, index) => const SizedBox(width: 12,),
                          itemCount: 3
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            right: 85,
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                  height: 120,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset('images/book_hotels.png'),
                      Image.asset('images/hotel.png')
                    ],
                  ),
                ),
                const SizedBox(width: 16,),
                SizedBox(
                  width: 100,
                  height: 120,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset('images/book_airPlane.png'),
                      Image.asset('images/airplane.png')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
