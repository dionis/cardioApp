import 'package:flutter/material.dart';

class MessageFieldBox extends StatefulWidget {
  const MessageFieldBox({super.key});

  @override
  State<MessageFieldBox> createState() => _MessageFieldBoxState();
}

class _MessageFieldBoxState extends State<MessageFieldBox> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final textControler = TextEditingController();

    //To mainteid the focus
    final focusNode = FocusNode();
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    var inputDecoration = InputDecoration(
        hintText: 'End your message with "??"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: () {
              final textValue = textControler.value.text;
              print('The value in the text box is: $textValue');
              textControler.clear();
            }));
    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(),
      focusNode: focusNode,
      controller: textControler,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('onFieldSubmitted Value to send $value');
        textControler.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) {
        print('onFieldSubmitted Value to send $value');
      },
    );
  }
}
