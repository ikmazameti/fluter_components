import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);


  //List of menu
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: [
            const SizedBox(height: 8),
            buildMenuItem(text: 'Account', icon: Icons.person),
            const SizedBox(height: 8),
            buildMenuItem(text: 'People', icon: Icons.people),
            const SizedBox(height: 8),
            buildMenuItem(text: 'MY Orders', icon: Icons.shopping_cart),
            const SizedBox(height: 8),
            buildMenuItem(text: 'My Basket', icon: Icons.shopping_basket),
            const SizedBox(height: 8),
            Divider(
              color: Colors.white,
            ),
            buildMenuItem(text: 'Settings', icon: Icons.settings),
            const SizedBox(height: 8),
            buildMenuItem(text: 'Help Center', icon: Icons.contact_support),
            const SizedBox(height: 50),
            buildMenuItem(text: 'Logout', icon: Icons.exit_to_app,),
          ],
        ),
      ),
    );
  }

  //Menu item
  Widget buildMenuItem({required String text, required IconData icon}) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      hoverColor: hoverColor,
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      onTap: () {},
    );
  }
}
