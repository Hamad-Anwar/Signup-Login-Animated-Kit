import 'dart:async';
import 'package:flutter/material.dart';
import 'package:signup_kit/Components/card_button.dart';
import 'package:signup_kit/Components/custom_container.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool signup=true;
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      showSignUpSheet();
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: InkWell(
        onTap: () => showSignUpSheet(),
      ),
    );
  }

  showSignUpSheet() {
    showGeneralDialog
      (
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) => body(),
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        tween = Tween(begin: const Offset(0, -1), end: Offset.zero);
        return SlideTransition(
          position: tween.animate(
            CurvedAnimation(parent: anim, curve: Curves.easeInOut),
          ),
          child: child,
        );
      },
    );
  }
  Widget body(){
    return Center(
      child: Container(
          height: 630,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.95),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(0, 30),
                blurRadius: 60,
              ),
              const BoxShadow(
                color: Colors.black45,
                offset: Offset(0, 30),
                blurRadius: 60,
              ),
            ],
          ),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Scaffold(
                backgroundColor: Colors.transparent,
                body: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              signup?"Sign up":"Sign in",
                              style: const TextStyle(
                                fontSize: 34,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            AnimatedOpacity(
                              opacity: signup?1:0,
                              duration: const Duration(milliseconds: 300),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                    color: Colors.white,
                                    height: 100,
                                    width: 100,
                                    child: Stack(
                                      children: [
                                        const Center(child: FlutterLogo(size: 60,)),
                                        Positioned(
                                            bottom: 1,
                                            child: Container(
                                              height: 20,
                                              width: 100,
                                              padding: const EdgeInsets.only(bottom: 10),
                                              color: Colors.black12,
                                              child: const Center(child: Icon(Icons.camera_alt_outlined),),
                                            ))
                                      ],
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "The signup kit developed in Flutter making the development process easier.",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        CustomContainer(signup: signup,
                        name: name,
                          email: email,
                            password: password,

                        ),
                        const SizedBox(height: 20,),
                        signup ? const CardButton(txt: "Sign Up") : const CardButton(txt: "Sign In"),
                        const SizedBox(height: 20,),
                        GestureDetector(
                          onTap: () async
                          {
                            signup=!signup;
                            setState((){});
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an Account",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Sign in",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          )
      ),
    );
  }






}
