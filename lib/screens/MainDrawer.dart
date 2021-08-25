import 'package:flutter/material.dart';

import 'package:flutter_assignment_revedor_india/profiles/Profile.dart';

import 'LoginPage.dart';

import '../profiles/Users.dart';

class MainDrawer extends StatelessWidget {
  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.lightBlue.shade900,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: Image.asset("images/image.jpg").image,
                          fit: BoxFit.fill,
                        )),
                  ),
                  Text(
                    "Doctor Strange",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "doctor.strange@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person_sharp,
              color: Colors.black,
              size: 25,
            ),
            title: Text(
              " Users",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Users()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout_rounded,
              color: Colors.black,
              size: 25,
            ),
            title: Text(
              "Log Out",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
