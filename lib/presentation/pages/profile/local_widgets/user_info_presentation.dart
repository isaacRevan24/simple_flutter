import 'package:flutter/material.dart';

class UserInfoPresentation extends StatelessWidget {
  final String userName;
  final String userID;
  // TODO: make a default image
  final String profilePicture;

  UserInfoPresentation(
      {@required this.userName, @required this.userID, this.profilePicture});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(profilePicture),
          ),
          Text(
            userName,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            userID,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
