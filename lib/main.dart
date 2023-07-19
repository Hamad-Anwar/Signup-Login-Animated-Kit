import 'package:flutter/material.dart';
import 'package:signup_kit/Pages/page_1.dart';
import 'package:signup_kit/Pages/page_2.dart';
import 'package:signup_kit/Pages/page_3.dart';
import 'package:signup_kit/Pages/page_4.dart';
import 'package:signup_kit/Pages/page_5.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60,),
          const FlutterLogo(
            size: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            textAlign: TextAlign.center,
            text:  const TextSpan(
              children: [
                TextSpan(
                  text: "Login Signup",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),
                ),
                TextSpan(
                  text: "\nUI kit",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ]
            ),
          ),
          Expanded(
            child: ListView(
               children: [
                 GestureDetector(
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page1(),)),
                   child: Container(
                     height: 50,
                     width: double.infinity,
                     margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.blue),
                     ),
                     child: Center(
                         child: RichText(text: const TextSpan(
                             children: [
                               TextSpan(
                                 text: "Login-Signup ",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 15),
                               ),
                               TextSpan(
                                 text: "  Page ${1}",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
                               )
                             ]
                         ))
                     ),
                   ),
                 ),
                 GestureDetector(
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Page2(),)),
                   child: Container(
                     height: 50,
                     width: double.infinity,
                     margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.blue),
                     ),
                     child: Center(
                         child: RichText(text: const TextSpan(
                             children: [
                               TextSpan(
                                 text: "Login-Signup ",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 15),
                               ),
                               TextSpan(
                                 text: "  Page ${2}",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
                               )
                             ]
                         ))
                     ),
                   ),
                 ),
                 GestureDetector(
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Page3(),)),
                   child: Container(
                     height: 50,
                     width: double.infinity,
                     margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.blue),
                     ),
                     child: Center(
                         child: RichText(text: const TextSpan(
                             children: [
                               TextSpan(
                                 text: "Login-Signup ",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 15),
                               ),
                               TextSpan(
                                 text: "  Page ${3}",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
                               )
                             ]
                         ))
                     ),
                   ),
                 ),
                 GestureDetector(
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page4(),)),
                   child: Container(
                     height: 50,
                     width: double.infinity,
                     margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.blue),
                     ),
                     child: Center(
                         child: RichText(text: const TextSpan(
                             children: [
                               TextSpan(
                                 text: "Login-Signup ",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 15),
                               ),
                               TextSpan(
                                 text: "  Page ${4}",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
                               )
                             ]
                         ))
                     ),
                   ),
                 ),
                 GestureDetector(
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page5(),)),
                   child: Container(
                     height: 50,
                     width: double.infinity,
                     margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.blue),
                     ),
                     child: Center(
                         child: RichText(text: const TextSpan(
                             children: [
                               TextSpan(
                                 text: "Login-Signup ",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 15),
                               ),
                               TextSpan(
                                 text: "  Page ${5}",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
                               )
                             ]
                         ))
                     ),
                   ),
                 )
               ],
            )
          )
        ],
      ),
    );
  }

}
