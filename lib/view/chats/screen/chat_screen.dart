import 'package:chat_app/model/info.dart';
import 'package:chat_app/utils/colors.dart';
import 'package:chat_app/utils/widgets/chat_list.dart';
import 'package:chat_app/view/chats/widgets/bottom_chat_screen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: const Column(
        children: [
          Expanded(
            child: ChatList(),
          ),
          BottomChatScreen(),
        ],
      ),
    );
  }
}
