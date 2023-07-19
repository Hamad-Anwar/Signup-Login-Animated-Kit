import 'package:flutter/material.dart';
class Heading extends StatelessWidget {
  const Heading({super.key,required this.signup,this.txt});
  final bool signup;
  final String? txt;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          txt!=null ? txt!: (signup? "Sign up" : "Sign in"),
          style: const TextStyle(
            fontSize: 34,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
          ),
        ),
        Stack(
          children: [
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
            AnimatedOpacity(
              opacity: signup?0:1,
              duration: const Duration(milliseconds: 300),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                    color: Colors.white,
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        const Center(child: FlutterLogo(
                          size: 100,
                          style: FlutterLogoStyle.horizontal,
                        )),
                      ],
                    )
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
