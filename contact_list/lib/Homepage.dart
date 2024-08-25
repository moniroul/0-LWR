import 'package:contact_list/Contact_View.dart';
import 'package:contact_list/model/userModel.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List<UserModel> users = [
    UserModel(
      id: 1,
      phone: 1234567890,
      name: "Sahil",
      email: "sahil@123",
      profileImage: "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      about:
          "I am sahil  I am sahilI am sahilI am sahilI am sahilI am sahilI am sahilI am sahilI am sahilI am sahilI am sahilI am sahilI am sahilI am sahil ",
    ),
    UserModel(
        id: 1,
        phone: 1234567890,
        name: "Sahil",
        email: "sahil@123",
        profileImage: "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
        about: "this my about data"),
    UserModel(
        id: 1,
        phone: 1234567890,
        name: "Sahil",
        email: "sahil@123",
        profileImage: "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
        about: "this my about data"),
    UserModel(
        id: 1,
        phone: 1234567890,
        name: "Sahil",
        email: "sahil@123",
        profileImage: "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
        about: "this my about data"),
    UserModel(
        id: 1,
        phone: 1234567890,
        name: "Sahil",
        email: "sahil@123",
        profileImage: "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
        about: "this my about data"),
    UserModel(
        id: 1,
        phone: 1234567890,
        name: "Sahil",
        email: "sahil@123",
        profileImage: "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
        about: "this my about data"),
    UserModel(
        id: 1,
        phone: 1234567890,
        name: "Sahil",
        email: "sahil@123",
        profileImage: "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
        about: "this my about data"),
    UserModel(
        id: 1,
        phone: 1234567890,
        name: "Sahil",
        email: "sahil@123",
        profileImage: "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
        about: "this my about data"),
    UserModel(
        id: 1,
        phone: 1234567890,
        name: "Sahil",
        email: "sahil@123",
        profileImage: "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
        about: "this my about data"),
  ];
 
  String dafultImage =
      "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?size=626&ext=jpg";
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
        backgroundColor: Colors.green[100],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactView(
                              user: users[index],
                            )));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 218, 247, 220),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ListTile(
                    leading: Container(
                      child: Image.network(users[index].profileImage != null
                          ? users[index].profileImage!
                          : dafultImage),
                    ),
                    title: Text(users[index].name!),
                    subtitle: Text(users[index].email!),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
