// import 'package:flutter/material.dart';
//
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Column(
//         children: [
//           Center(
//             child: FlutterLogo(size: 80),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // @override
  // void initState() {
  //   super.initState();
  //   _startSplash();
  // }

  // void _startSplash() {
  //   Timer(const Duration(seconds: 3), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => const HomeScreen(), // Next Screen
  //       ),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            const SizedBox(height: 30),

            Image.asset(
              "assets/images/img.png",
              width: 130,
              height: 130,
            ),

            const SizedBox(height: 25),

            const Text(
              'Shop Manager',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xff071737),
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Admin & Seller Panel',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff60708F),
              ),
            ),

            const SizedBox(height: 45),

            Expanded(
              child: Image.asset(
                "assets/images/img_1.png",
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const LinearProgressIndicator(
                  minHeight: 8,
                  backgroundColor: Color(0xffE4E0FF),
                  valueColor: AlwaysStoppedAnimation(
                    Color(0xff4B27D9),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Loading...",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff60708F),
              ),
            ),







            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}