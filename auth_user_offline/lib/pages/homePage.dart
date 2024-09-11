import 'package:auth_user_offline/main.dart';
import 'package:auth_user_offline/pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  logout() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("login", "false");
    Navigator.push(context, MaterialPageRoute(builder: (_) => Login1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
          ),
          SizedBox(width: 20),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/free-photo/beautiful-domestic-cat-laying-fence_181624-43207.jpg?ga=GA1.1.195726118.1725651117&semt=ais_hybrid'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.event_available),
              title: Text('My Events'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center ,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Home Page",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(child: Text('Logout'), onTap: () => logout()),
          ],
        ),
      ),
    );
  }
}
