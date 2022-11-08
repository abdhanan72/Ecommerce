import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            accountName: Text('ABD HANAN'),
            accountEmail: Text('hanan@unais.in'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://assets-prd.ignimgs.com/2022/09/15/cod-mw2-skull-1654191544255-1654722227152-1663251721478.jpeg'),
            ),
          ),
          Column(
            children: [
              ListTile(
                tileColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                title: const Text('GO PREMIUM'),
                leading: const Icon(Icons.workspace_premium),
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
