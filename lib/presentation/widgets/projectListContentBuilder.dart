import 'package:flutter/material.dart';

ListView projectListContent(ScrollController scrollController, int listSize) {
  return ListView.builder(
    controller: scrollController,
    itemCount: listSize,
    itemBuilder: (BuildContext context, int index) {
      // Number 0 is the header and the lastone is the footer
      if (index == 0) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
          ),
          height: 50,
          child: Center(child: Text('titulo')),
        );
      } else if (index == listSize - 1) {
        return Container(
          height: 50,
          color: Colors.blue,
          child: Center(child: Text('final')),
        );
      } else {
        return ListTile(title: Text('Item $index'));
      }
    },
  );
}
