// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final imageURL =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRuc5g4UHrTWzsk7SEU0QbEauiRxakwFnd9w&usqp=CAU";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: const Text('khan'),
                accountEmail: const Text("khan@gmail.com"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageURL)),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text('Home',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  )),
              iconColor: Colors.white,
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text('Profile',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  )),
              iconColor: Colors.white,
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text('Email',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  )),
              iconColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
