import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // color: Colors.green, // Set drawer background colour to green
      child: ListView(
        children: [
          Container(
            color: Colors.pink,
            child: DrawerHeader(
              child: Center(
                child: Text(
                  "Something Here",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.tv,
            ),
            // Icon colour to white
            title: Text("Episode"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
