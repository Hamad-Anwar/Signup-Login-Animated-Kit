import 'package:flutter/material.dart';

import '../Components/Heading.dart';
import '../Components/card_button.dart';
import '../Components/custom_container.dart';
import '../Components/social_media_icons.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  bool signup=true;
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container()),
            Expanded(
                flex: 11,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration:  BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: Heading(signup: signup),
                      ),
                      const SizedBox(height: 20,),
                      const SocialMediaIcons(),
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
            Expanded(
                flex: 1,
                child: Container())
          ],
        ),
      ),
    );
  }

  onTap(){
    signup=!signup;
    setState((){});
  }

}
