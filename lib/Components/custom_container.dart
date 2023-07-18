import 'package:flutter/material.dart';
class CustomContainer extends StatefulWidget {
  final bool signup;
  final TextEditingController name,email,password;
  const CustomContainer({super.key, required this.signup, required this.name, required this.email, required this.password});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height: widget.signup?MediaQuery.of(context).size.height/3.6:MediaQuery.of(context).size.height/5.5,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
              color: Colors.blue.withOpacity(.5),
              blurRadius: 20,
              offset: const Offset(0, 10)
          )]
      ),
      child: Form(
        child: Stack(
          children: <Widget>[
            Visibility(
              visible: widget.signup,
              maintainState: false,
              maintainSize: false,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[200]!))
                ),
                child: TextFormField(
                  controller: widget.name,
                  decoration: const InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none
                  ),
                ),
              ),
            ),
            Align(
              alignment: widget.signup?Alignment.center:Alignment.topCenter,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[200]!))
                ),
                child: TextFormField(
                  controller: widget.email,
                  decoration: const InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[200]!))
                ),
                child: TextFormField(
                  controller: widget.password,
                  decoration: const InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
