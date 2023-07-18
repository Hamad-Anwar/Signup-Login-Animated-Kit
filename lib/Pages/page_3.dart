import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Components/Heading.dart';
import '../Components/card_button.dart';
import '../Components/custom_container.dart';
class Page3 extends StatefulWidget {
  const Page3({super.key});
  @override
  State<Page3> createState() => _Page3State();
}
class _Page3State extends State<Page3> {
  bool signup=true;
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              Heading(signup: signup,txt: "Welcome"),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "The signup kit developed in Flutter making the development process easier.",
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20,),
              Flexible(child: Center(child: CustomContainer(signup: signup,
                email: email,
                password: password,
                name: name,
              ),)),
              const SizedBox(height: 20,),
              signup ? const CardButton(txt: "Sign Up") : const CardButton(txt: "Sign In"),
              const SizedBox(height: 20,),

              const Text("Or continue with"),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  socialMedia("Assets/Svg/google_logo.svg", "Google"),
                  socialMedia("Assets/Svg/apple_logo.svg", "Apple")
                ],
              ),
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
              const SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
  onTap(){
    signup=!signup;
    setState((){});
  }
  Widget socialMedia(String asset,String text){
    return Container(
      height: 50,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(asset),
          const SizedBox(width: 10,),
          Text(text,style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),)
        ],
      ),
    );
  }
}
