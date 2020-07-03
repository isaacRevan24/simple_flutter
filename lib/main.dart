import 'package:flutter/material.dart';
import 'presentation/widgets/bottom_navigation.dart';

void main() => runApp(Simple());

class Simple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SimpleBody(),
    );
  }
}
