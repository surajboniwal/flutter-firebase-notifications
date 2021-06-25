import 'package:flutter/material.dart';
import 'package:flutter_firebase_notification/controllers/firebase_messaging_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final FirebaseMessagingController _messagingController = Get.find<FirebaseMessagingController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                _messagingController.getToken();
              },
              child: Text('Get Token'),
            ),
          ],
        ),
      ),
    );
  }
}
