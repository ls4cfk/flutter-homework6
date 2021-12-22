import 'package:flutter/material.dart';
import 'package:homework_6/data/worldWonders.dart';
import 'package:homework_6/screens/wondersMap.dart';

class WondersListScreen extends StatelessWidget {
  const WondersListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Wonders"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(worldWondersList[index].name),
              onTap: () => Navigator.pushNamed(
                  context, WonderMapScreen.routeName,
                  arguments: {"wonder": worldWondersList[index]}),
            );
          },
          itemCount: worldWondersList.length,
        ));
  }
}