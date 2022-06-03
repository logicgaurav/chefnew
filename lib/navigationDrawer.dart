import 'package:chefbox/hola.dart';
import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'main.dart';

class NavigationDrawer extends StatelessWidget {

  const NavigationDrawer({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,//20.0,
      child: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color:  Color(0xFFFFA500),
             borderRadius: BorderRadius.only(
           // topRight: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
            //topLeft: Radius.circular(40.0),
            bottomLeft: Radius.circular(40.0),
                ),
      ),
                accountName: const Text("Hello Test"),
                accountEmail: const Text("test@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                  Theme.of(context).platform == TargetPlatform.iOS
                      ?  const Color(0xFFFFA500)
                      : Colors.white,
                  child: const Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.menu_book),
                title: const Text('My Bookings'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => holaScreen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.wrap_text_rounded),
                title: const Text('All Blogs'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => holaScreen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_add),
                title: const Text('My profile'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => holaScreen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.book_sharp),
                title: const Text('Privacy Policy'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => holaScreen()));
                },
              ),

              ListTile(
                leading: const Icon(Icons.branding_watermark),
                title: const Text('Terms & conditions'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => holaScreen()));
                },
              ),

              ListTile(
                selected: true,
                tileColor: Colors.black,
                leading: const Icon(Icons.login_outlined),
                title: const Text('Logout',
                    style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize:15
                    ),),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => holaScreen()));
                },
              ),
            ],
          )),
    );
  }
}