import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Map<String, dynamic>> users = [
    {
      "id": 0,
      "username": "user1",
      "email": "user1@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 1,
      "username": "user2",
      "email": "user2@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 2,
      "username": "user3",
      "email": "user3@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 3,
      "username": "user4",
      "email": "user4@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 4,
      "username": "user5",
      "email": "user5@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 5,
      "username": "user6",
      "email": "user6@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 6,
      "username": "user7",
      "email": "user7@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 7,
      "username": "user8",
      "email": "user8@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 8,
      "username": "user9",
      "email": "user9@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 9,
      "username": "user10",
      "email": "user10@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 10,
      "username": "user11",
      "email": "user11@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 11,
      "username": "user12",
      "email": "user12@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 12,
      "username": "user13",
      "email": "user13@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 13,
      "username": "user14",
      "email": "user14@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 14,
      "username": "user15",
      "email": "user15@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 15,
      "username": "user16",
      "email": "user16@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 16,
      "username": "user17",
      "email": "user17@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 17,
      "username": "user18",
      "email": "user18@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 18,
      "username": "user19",
      "email": "user19@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
    {
      "id": 19,
      "username": "user20",
      "email": "user20@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png"
    },
  ];

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
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 218, 247, 220),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: ListTile(
                  leading: Container(
                    child: Image.network(users[index]["profileImage"]),
                  ),
                  title: Text(users[index]['username']),
                  subtitle: Text(users[index]['email']),
                  trailing: Icon(Icons.more_horiz),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
