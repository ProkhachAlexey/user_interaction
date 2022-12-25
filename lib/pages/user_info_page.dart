import 'package:flutter/material.dart';
import 'package:user_interaction/model/user.dart';

class UserInfoPage extends StatelessWidget {

  User user;

  UserInfoPage(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User info page'),
        centerTitle: true,
      ),
      body: Card(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                user.name,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(user.story),
              leading: const Icon(Icons.person, color: Colors.black),
              trailing: Text(user.county),
            ),
            ListTile(
              title: Text(
                user.phone,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.phone,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text(
                user.email,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.mail,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
