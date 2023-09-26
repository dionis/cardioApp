import 'package:flutter/material.dart';

class HerMessageBubble extends StatefulWidget {
  const HerMessageBubble({super.key});

  @override
  State<HerMessageBubble> createState() => _HerMessageBubbleState();
}

class _HerMessageBubbleState extends State<HerMessageBubble> {
  @override
  Widget build(BuildContext context) {
    //Call the color defined by me in app_theme
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola Mundo.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble()
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL7q-fJ349coNRbcja73GpNdYpwKKLX_Tptw&usqp=CAU',
        width: size.height * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          return (loadingProgress == null)
              ? child
              : Container(
                  width: size.height * 0.5,
                  height: 150,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: const Text('The imagen is comming'),
                );
        },
      ),
    );
  }
}
