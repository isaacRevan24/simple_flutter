import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:simple_flutter/presentation/widgets/custom-widget.dart';
import 'package:simple_flutter/presentation/pages/home/page_home.dart';
import 'package:simple_flutter/presentation/pages/tasks/page_tasks.dart';
import 'package:simple_flutter/presentation/pages/projects/page_projects.dart';
import 'package:simple_flutter/presentation/pages/profile/page_profile.dart';

class SimpleBody extends StatefulWidget {
  SimpleBody({Key key}) : super(key: key);

  @override
  _SimpleBodyState createState() => _SimpleBodyState();
}

class _SimpleBodyState extends State<SimpleBody> {
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      TasksPage(),
      ProjectsPage(),
      ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
        isTranslucent: false,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.collections_bookmark),
        title: ("Tasks"),
        activeColor: Colors.teal,
        inactiveColor: Colors.grey,
        isTranslucent: false,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.class_),
        title: ("Projects"),
        activeColor: Colors.deepOrange,
        inactiveColor: Colors.grey,
        isTranslucent: false,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: ("Profile"),
        activeColor: Colors.indigo,
        inactiveColor: Colors.grey,
        isTranslucent: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
        controller: _controller,
        screens: _buildScreens(),
        items:
            _navBarsItems(), // Redundant here but defined to demonstrate for other than custom style
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        onItemSelected: (int) {
          setState(
              () {}); // This is required to update the nav bar if Android back button is pressed
        },
        customWidget: CustomNavBarWidget(
          items: _navBarsItems(),
          onItemSelected: (index) {
            setState(() {
              _controller.index = index; // THIS IS CRITICAL!! Don't miss it!
            });
          },
          selectedIndex: _controller.index,
        ),
        itemCount: 4,
        navBarStyle:
            NavBarStyle.custom // Choose the nav bar style with this property
        );
  }
}

// TODO: Pasar los strings y los estilos a consts
