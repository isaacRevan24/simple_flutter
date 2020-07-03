import 'package:flutter/material.dart';
import 'local_widgets/user_info_presentation.dart';
import 'local_widgets/configuration_options.dart';
import 'local_widgets/configuration_title.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              UserInfoPresentation(
                userID: '@elon.musk',
                userName: 'Elon Musk',
                profilePicture: 'images/elon.jpeg',
              ),
              Divider(
                thickness: 2,
              ),
              ConfigurationTitle(),
              ConfigurationOptions()
            ],
          ),
        ),
      ),
    );
  }
}
