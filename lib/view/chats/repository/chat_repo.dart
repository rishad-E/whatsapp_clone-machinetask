import 'package:chat_app/model/usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatRepository {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  ChatRepository({
    required this.firestore,
    required this.auth,
  });

  void sendTextMessage({
    required BuildContext context,
    required String text,
    required String recieverUID,
    required UserModel senderUser
  }) async {
    try {
      
      // var timeSend = DateTime.now();


    } catch (e) {
      
    }
  }
}
