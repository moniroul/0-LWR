 
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepagedb extends StatefulWidget {
  const Homepagedb({Key? key}) : super(key: key);

  @override
  _HomepagedbState createState() => _HomepagedbState();
}

class _HomepagedbState extends State<Homepagedb> {
  TextEditingController nameController = TextEditingController();



  List<String> dbusers = [];

  userAdd() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dbusers.add(nameController.text);
    await prefs.setStringList("user", dbusers);
    userGet();
  }

  void userGet() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> data = await prefs.getStringList("user") != null
        ? prefs.getStringList("user")!
        : [];
    setState(() {
      dbusers = data;
    });
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
                      onPressed: () async {
                        // UserDataAdd();
                        await userAdd();
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
  void initState() {
    userGet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
        backgroundColor: Colors.green[100],
      ),
      body: dbusers.length == 0
          ? Center(child: Text("No user"))
          : ListView.builder(
              itemCount: dbusers.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 218, 247, 220),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ListTile(
                          title: Text(dbusers[index]),
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
