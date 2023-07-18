import 'package:flutter/material.dart';

import '../Components/Heading.dart';
import '../Components/card_button.dart';
import '../Components/custom_container.dart';
import '../Components/social_media_icons.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  bool signup=true;
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
              flex: 11,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,),
                decoration:  const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 80,),
                    Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: Heading(signup: signup),
                    ),
                    const SizedBox(height: 20,),

                    const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "The signup kit developed in Flutter making the development process easier.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(child: Center(child: CustomContainer(signup: signup,
                      email: email,
                      password: password,
                      name: name,
                    ),)),
                    const SizedBox(height: 20,),
                    signup ? const CardButton(txt: "Sign Up") : const CardButton(txt: "Sign In"),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: onTap,
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
                    const SizedBox(height: 20,)
                  ],
                ),
              )
          ),
           const Expanded(
               flex: 2,
               child: Padding(
                 padding: EdgeInsets.only(left: 30),
                 child: SocialMediaIcons(),
               ),)
        ],
      ),
    );
  }

  onTap(){
    signup=!signup;
    setState((){});
  }
}
