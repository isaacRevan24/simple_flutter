import 'package:flutter/material.dart';
import 'percent_circular_bar.dart';

ListTile buildProjectCard(int index, List<String> entries, List<String> dates) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    leading: FlutterLogo(
      size: 70,
    ),
    title: Text('Project number ${entries[index]}'),
    subtitle: Text('Last update   ${dates[index]}'),
    trailing: GeneralProjectIndicator(),
    onTap: () {},
  );
}

// TODO: Ver como meter imagenes donde va el logo
