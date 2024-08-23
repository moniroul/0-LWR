import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  var user;
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
        title: Text("${user['username']}"),
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
                child: Image.network(user["profileImage"])),
            Text(
              user['username'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            Text(user['email']),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(user['about']),
            ),
          ],
        ),
      ),
    );
  }
}
