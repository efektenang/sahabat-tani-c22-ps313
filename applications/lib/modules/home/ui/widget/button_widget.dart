import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String image;
  final String title;
  final void Function() function;
  const ButtonWidget({Key? key, required this.image, required this.title, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black, width: 1)),
        child: Row(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              width: 50,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.left,
                style:
                    TextStyle(color: Colors.green[800], fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
