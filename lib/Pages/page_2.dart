
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signup_kit/Components/Heading.dart';
import 'package:signup_kit/Components/social_media_icons.dart';
import '../Components/card_button.dart';
import '../Components/custom_container.dart';
class Page2 extends StatefulWidget {
  const Page2({super.key});
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool signup=true;
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            //give some space from top
            const Expanded(
              flex: 1,
              child: Center(),
            ),
            //page content here
            Expanded(
              flex: 11,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Container(height: 3,width: 80,color: Colors.grey,),
                    const SizedBox(height: 30,),
                    Heading(signup: signup),
                    const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "The signup kit developed in Flutter making the development process easier.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20,),
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
                    const SizedBox(height: 20,),
                    const SocialMediaIcons(),
                    const SizedBox(height: 50,),
                  ],
                ),
              )
            ),
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


