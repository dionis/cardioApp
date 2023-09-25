import 'package:flutter/material.dart';
import 'package:yes_no_app_course/config/theme/app_theme.dart';
import 'package:yes_no_app_course/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectColor: 5).theme(),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Material App Bar'),
            ),
            body: const ChatScreen()));
  }

  //Example 1
  // @override
  //   Widget build(BuildContext context) {
  //     return MaterialApp(
  //       title: 'Material App',
  //       debugShowCheckedModeBanner: false,
  //       theme: AppTheme(selectColor: 5).theme(),
  //       home: Scaffold(
  //         appBar: AppBar(
  //           title: const Text('Material App Bar'),
  //         ),
  //         body: Center(
  //             child: FilledButton.tonal(
  //                 onPressed: () => {},
  //                 child: const Text('Hello World Click ME'))),
  //       ),
  //     );
  //   }
}
