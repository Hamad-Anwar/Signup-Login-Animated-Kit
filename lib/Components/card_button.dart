import 'package:flutter/material.dart';
class CardButton extends StatelessWidget {
  final String txt;
  const CardButton({super.key, required this.txt});
  @override
  Widget build(BuildContext context) {
     return Card(
      key: UniqueKey(),
      shadowColor: Colors.blue,
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
      ),
      child: Container(
        height: 50,
        width: 236,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.arrow_right),
            const SizedBox(width: 8),
            Text(
              txt,
              style: Theme.of(context).textTheme.button,
            )
          ],
        ),
      ),
    );
  }
}
