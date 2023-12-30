import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const MyButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey,
                  shape: BoxShape.circle
            ),
            child: Center(
              child: Text(title,style: TextStyle(fontSize: 20,color: Colors.white),),
            ),

          ),
        ),
      ),
    );
  }
}
