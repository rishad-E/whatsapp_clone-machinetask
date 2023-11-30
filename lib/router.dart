import 'package:chat_app/utils/common/error.dart';
import 'package:chat_app/view/auth/view/login_screen.dart';
import 'package:chat_app/view/auth/view/otp_screen.dart';
import 'package:chat_app/view/auth/view/user_detail_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTPScreen(
          verificationId: verificationId,
        ),
      );
    case UserDetailScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const UserDetailScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This page does\'t exist'),
        ),
      );
  }
}

      

 // case UserInformationScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (context) => const UserInformationScreen(),
    //   );
    // case SelectContactsScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (context) => const SelectContactsScreen(),
    //   );
    // case MobileChatScreen.routeName:
    //   final arguments = settings.arguments as Map<String, dynamic>;
    //   final name = arguments['name'];
    //   final uid = arguments['uid'];
    //   final isGroupChat = arguments['isGroupChat'];
    //   final profilePic = arguments['profilePic'];
    //   return MaterialPageRoute(
    //     builder: (context) => MobileChatScreen(
    //       name: name,
    //       uid: uid,
    //       isGroupChat: isGroupChat,
    //       profilePic: profilePic,
    //     ),
    //   );
    // case ConfirmStatusScreen.routeName:
    //   final file = settings.arguments as File;
    //   return MaterialPageRoute(
    //     builder: (context) => ConfirmStatusScreen(
    //       file: file,
    //     ),
    //   );
    // case StatusScreen.routeName:
    //   final status = settings.arguments as Status;
    //   return MaterialPageRoute(
    //     builder: (context) => StatusScreen(
    //       status: status,
    //     ),
    //   );
    // case CreateGroupScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (context) => const CreateGroupScreen(),
    //   );
    // default:
   