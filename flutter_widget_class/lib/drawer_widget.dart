import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  Widget drawercard(String title, IconData icon, bool isBorder) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: isBorder
            ? Border.all(color: Colors.black)
            : Border.all(color: Color.fromARGB(255, 165, 236, 0)),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 10,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("LWR Drawer"),
        backgroundColor: Color.fromARGB(255, 73, 171, 219),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 20,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "LWR",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Flutter Developer",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    drawercard("Home", Icons.home, true),
                    drawercard("Card", Icons.card_giftcard, false),
                    drawercard("Gallery", Icons.browse_gallery_outlined, false),
                    drawercard("Order", Icons.sim_card_download, true),
                    drawercard("Account", Icons.account_balance, true),
                    drawercard("Home", Icons.home, true),
                    drawercard("Card", Icons.card_giftcard, false),
                    drawercard("Gallery", Icons.browse_gallery_outlined, false),
                    drawercard("Order", Icons.sim_card_download, true),
                    drawercard("Account", Icons.account_balance, true),
                    drawercard("Home", Icons.home, true),
                    drawercard("Card", Icons.card_giftcard, false),
                    drawercard("Gallery", Icons.browse_gallery_outlined, false),
                    drawercard("Order", Icons.sim_card_download, true),
                    drawercard("Account", Icons.account_balance, true),
                    drawercard("Home", Icons.home, true),
                    drawercard("Card", Icons.card_giftcard, false),
                    drawercard("Gallery", Icons.browse_gallery_outlined, false),
                    drawercard("Order", Icons.sim_card_download, true),
                    drawercard("Account", Icons.account_balance, true),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Text("Open Drwer")),
      ),
    );
  }
}
