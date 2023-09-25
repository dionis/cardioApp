import 'package:flutter/material.dart';

class MyMessageBubble extends StatefulWidget {
  const MyMessageBubble({super.key});

  @override
  State<MyMessageBubble> createState() => _MyMessageBubbleState();
}

class _MyMessageBubbleState extends State<MyMessageBubble> {
  @override
  Widget build(BuildContext context) {
    //Call the color defined by me in app_theme
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Non enim irure eu esse.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
