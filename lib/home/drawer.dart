import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike/home/login.dart';
import 'package:nike/homenavigation/mainhome.dart';
import 'package:nike/profil/profil.dart';

// ignore: use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0XFF1483C2),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.account_circle,
                        size: 90,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Your Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              ListTile(
                title: Row(
                  children: [
                    const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Profile',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'My Cart',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Favorite',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Image.asset(
                      'assets/images/truk.png',
                      width: 25,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Orders',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Notifications',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Settings',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Container(
                  height: 2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(30),
                  ),
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(
                      Icons.output_outlined,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Sign Out',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainHome(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.arrow_back_outlined))),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
