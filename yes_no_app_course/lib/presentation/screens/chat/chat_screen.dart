import 'package:flutter/material.dart';
import 'package:yes_no_app_course/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app_course/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app_course/presentation/widgets/chat/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL7q-fJ349coNRbcja73GpNdYpwKKLX_Tptw&usqp=CAU'),
          ),
        ),
        title: const Text('Mi Amor \u{2764}'),
        centerTitle: true,
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount:
                  100, //Define the ListView total element to cicular view
              itemBuilder: (context, index) {
                //contex: Context tree
                //index: Current position
                return (index % 2 == 0)
                    ? const MyMessageBubble()
                    : const HerMessageBubble();
              },
            )),

            ///Text Field Box
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
