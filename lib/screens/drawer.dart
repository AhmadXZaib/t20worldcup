// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:t20worldcup/screens/schedule_screen.dart';
import 'package:t20worldcup/screens/venues_screen.dart';

class AppDarwer extends StatelessWidget {
  const AppDarwer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey,
      child: ListView(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.light,
                    size: 70,
                    color: Colors.white,
                  ),
                  Text(
                    'T20 World Cup',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          ListTile(
            leading: const Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.access_time,
              size: 30,
              color: Colors.white,
            ),
            title: const Text(
              'Schedule',
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) {
                  return const ScheduleScreen();
                }),
              );
            },
          ),
          ListTile(
              leading: const Icon(
                Icons.location_on,
                size: 30,
                color: Colors.white,
              ),
              title: const Text(
                'Venues',
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const VenuesScrren();
                }));
              }),
          const ListTile(
            leading: Icon(
              Icons.history,
              size: 30,
              color: Colors.white,
            ),
            title: Text(
              'History',
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.group,
              size: 30,
              color: Colors.white,
            ),
            title: Text(
              'Teams',
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
          ),
          const Divider(
            thickness: 3,
            color: Colors.white,
          ),
          const ListTile(
            leading: Icon(
              Icons.star,
              size: 30,
              color: Colors.white,
            ),
            title: Text(
              'Rate App',
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
