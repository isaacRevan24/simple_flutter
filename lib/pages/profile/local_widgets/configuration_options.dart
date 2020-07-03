import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'theme_switch.dart';
// TODO: Cambiar forma de exportar paginas
import 'page_profile_information.dart';
import 'page_subscription.dart';
import 'page_notification.dart';
import 'page_configuration.dart';

class ConfigurationOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(Icons.person_outline),
            title: Text(
              'Profile information',
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  duration: Duration(milliseconds: 200),
                  type: PageTransitionType.rightToLeft,
                  child: ProfileInformation(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
              leading: Icon(Icons.attach_money),
              title: Text(
                'Subscription',
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 200),
                    type: PageTransitionType.rightToLeft,
                    child: Subscription(),
                  ),
                );
              }),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  duration: Duration(milliseconds: 200),
                  type: PageTransitionType.rightToLeft,
                  child: NotificationsConfig(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuration'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  duration: Duration(milliseconds: 200),
                  type: PageTransitionType.rightToLeft,
                  child: ConfigurationPage(),
                ),
              );
            },
          ),
        ),
        ThemeSwitch(),
      ],
    );
  }
}
