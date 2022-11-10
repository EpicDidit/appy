import 'package:flutter/material.dart'
    show
        AssetImage,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Center,
        Color,
        Colors,
        Column,
        Container,
        DecorationImage,
        EdgeInsets,
        ElevatedButton,
        ListTile,
        Padding,
        Radius,
        SafeArea,
        Scaffold,
        SizedBox,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;
//import 'package:flutter/widgets.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/confused.jpg'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Maryann Gold",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.0,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Favorite"),
              ),
              const SizedBox(
                height: 55,
              ),
              Container(
                width: double.infinity,
                height: 320,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    // ListTile(
                    //   leading: Container(),
                    // )
                  ],
                ),
              ),
            ],
          ),

          // body: SizedBox(
          //   height: 300,
          //   child: Stack(
          //     children: [
          //       Column(
          //         children: [
          //           Expanded(
          //             flex: 1,
          //             child: Container(),
          //           ),
          //           Expanded(
          //             flex: 1,
          //             child: Container(
          //               decoration: const BoxDecoration(
          //                 borderRadius: BorderRadius.only(
          //                   topLeft: Radius.circular(50),
          //                   topRight: Radius.circular(50),
          //                 ),
          //                 color: Colors.white,
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //       Align(
          //         alignment: Alignment.center,
          //         child: Image.asset(
          //           'confused.jpg',
          //           fit: BoxFit.cover,
          //         ),
          //         //   child: Container(
          //         //     decoration: const BoxDecoration(
          //         //       image: DecorationImage(
          //         //         image: AssetImage('confused.jpg'),
          //         //       ),
          //         //     ),
          //         //     // Image.asset('confused.jpg', fit),
          //         //   ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      
    );
  }
}
