import 'package:chat_app/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomChatScreen extends StatefulWidget {
  const BottomChatScreen({
    super.key,
  });

  @override
  State<BottomChatScreen> createState() => _BottomChatScreenState();
}

class _BottomChatScreenState extends State<BottomChatScreen> {
  bool isSendText = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            onChanged: (value) {
              if (value.isNotEmpty) {
                setState(() {
                  isSendText = true;
                });
              }else{
                setState(() {
                  isSendText = false;
                });
              }
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: chatBoxColor,
              prefixIcon: SizedBox(
                width: 100,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                ),
              ),
              suffixIcon: const SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              hintText: 'Type a message!',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ),
         Padding(
          padding:const EdgeInsets.only(bottom: 8, right: 2, left: 2),
          child: CircleAvatar(
            backgroundColor:const Color(0xFF128C7E),
            radius: 23,
            child: Icon(
             isSendText ?  Icons.send : Icons.mic,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
