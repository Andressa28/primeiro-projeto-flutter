import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('AppBar'),
      // ),
      body: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('Andressa'),
            accountEmail: Text('andressa@email.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 112, 22, 128),
              child: Text('A'),
            ),
          ),
        ],
      ),
    );
  }
}
