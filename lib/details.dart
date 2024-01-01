import 'package:flutter/material.dart';
import 'package:master_details/userDataModel.dart';

class MyDetails extends StatelessWidget {
  const MyDetails({super.key, required this.userDataModel});
  final UserDataModel userDataModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 50,
                child: Image.network(
                  userDataModel.image,
                  fit: BoxFit.contain,
                )),
            Text(userDataModel.name),
            Text(userDataModel.email),
            Text(userDataModel.phone)
          ],
        ),
      ),
    );
  }
}
