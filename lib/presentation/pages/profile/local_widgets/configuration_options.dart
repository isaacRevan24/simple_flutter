import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'theme_switch.dart';
// TODO: Cambiar forma de exportar paginas
import 'package:simple_flutter/presentation/pages/configuration_pages/profile_information/page_profile_information.dart';
import 'package:simple_flutter/presentation/pages/configuration_pages/subscription/page_subscription.dart';
import 'package:simple_flutter/presentation/pages/configuration_pages/configuration/page_configuration.dart';
import 'package:simple_flutter/presentation/pages/configuration_pages/notification/page_notification.dart';

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
