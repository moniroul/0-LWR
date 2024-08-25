import 'package:contact_list/model/userModel.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  UserModel user;

  ContactView({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            )),
        title: Text("${user.name}"),
        backgroundColor: Colors.green[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 200,
                width: 220,
                child: Image.network(user.profileImage!)),
            Text(
              user.name!,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            Text(user.email!),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(user.about!),
            ),
          ],
        ),
      ),
    );
  }
}
