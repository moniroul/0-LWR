import 'package:contact_list/Contact_View.dart';
import 'package:contact_list/model/userModel.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  List<UserModel> users = [];

  String dafultImage =
      "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?size=626&ext=jpg";

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController aboutController = TextEditingController();

  UserDataAdd() {

    UserModel user = UserModel(
      id: users.length + 1,
      name: nameController.text,
      email: emailController.text,
      phone: int.parse(phoneController.text),
      about: aboutController.text,
      profileImage: dafultImage,
    );

    setState(() {
      users.add(user);
    });

    nameController.clear();
    emailController.clear();
    phoneController.clear();
    aboutController.clear();
  }

  Widget UserAdd() {
    return Dialog(
      child: Container(
        height: 500,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "User Info Add",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Name",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "phone",
                  ),
                  maxLength: 11,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: aboutController,
                  maxLines: 3,
                  maxLength: 100,
                  decoration: InputDecoration(
                    hintText: "about",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      color: Colors.green[200],
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Not now"),
                    ),
                    MaterialButton(
                      color: Colors.green[200],
                      onPressed: () {
                        UserDataAdd();
                        Navigator.pop(context);
                      },
                      child: Text("Save user"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showDialog(
              context: context,
              builder: (context) {
                return UserAdd();
              });
        },
        child: Icon(Icons.dialpad_sharp),
      ),
    );
  }
}
