import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_resturant_design/screens/AccountPage.dart';
import 'package:food_resturant_design/screens/CardPage.dart';
import 'package:food_resturant_design/screens/DetailPage.dart';
import 'package:food_resturant_design/screens/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Resturant',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/cardPage': (context) => CardPage(),
        '/detailPage': (context) => DetailPage(),
        '/accountPage': (context) => AccountPage(),
      },
    );
  }
}

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.orange[300],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 40,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/ic_profile.png',
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Hello ,',
                          style: GoogleFonts.lato(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Fateme',
                          style: GoogleFonts.lato(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    ListTile(
                      title: Text(
                        'Home',
                        style: GoogleFonts.lato(fontSize: 18),
                      ),
                      leading: const Icon(
                        CupertinoIcons.home,
                        color: Colors.black,
                      ),
                      onTap: () => Navigator.pushNamed(context, '/'),
                    ),
                    const SizedBox(height: 15),
                    ListTile(
                      title: Text(
                        'My Card',
                        style: GoogleFonts.lato(fontSize: 18),
                      ),
                      leading: const Icon(
                        CupertinoIcons.shopping_cart,
                        color: Colors.black,
                      ),
                      onTap: () => Navigator.pushNamed(context, '/cardPage'),
                    ),
                    const SizedBox(height: 15),
                    ListTile(
                      title: Text(
                        'Favorite',
                        style: GoogleFonts.lato(fontSize: 18),
                      ),
                      leading: const Icon(
                        CupertinoIcons.heart,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 15),
                    ListTile(
                      title: Text(
                        'FAQs',
                        style: GoogleFonts.lato(fontSize: 18),
                      ),
                      leading: const Icon(
                        CupertinoIcons.question,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 15),
                    ListTile(
                      title: Text(
                        'Support',
                        style: GoogleFonts.lato(fontSize: 18),
                      ),
                      leading: const Icon(
                        CupertinoIcons.phone,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 15),
                    ListTile(
                      title: Text(
                        'Setting',
                        style: GoogleFonts.lato(fontSize: 18),
                      ),
                      leading: const Icon(
                        CupertinoIcons.settings,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 15),
                    ListTile(
                      title: Text(
                        'Exit',
                        style: GoogleFonts.lato(fontSize: 18),
                      ),
                      leading: const Icon(
                        Icons.exit_to_app,
                        color: Colors.black,
                      ),
                      onTap: () => exit(0),
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
}
