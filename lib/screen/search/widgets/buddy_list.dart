import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuddyList extends StatelessWidget {
  const BuddyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: getChild()
    );
  }
}

Widget getChild(){
  return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return  ListTile(
          leading: const CircleAvatar(backgroundImage: NetworkImage("https://whatsondisneyplus.com/wp-content/uploads/2021/06/luca-avatar-WODP.png"),),
          title: Text(entries[index],style: const TextStyle(color: Colors.white),),
        );
      }
  );
}
