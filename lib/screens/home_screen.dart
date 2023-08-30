import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:t20worldcup/screens/drawer.dart';
import 'package:t20worldcup/screens/history_screen.dart';
import 'package:t20worldcup/screens/team_scrren.dart';
import 'package:t20worldcup/screens/schedule_screen.dart';
import 'package:t20worldcup/screens/university.dart';
import 'package:t20worldcup/screens/venues_screen.dart';
import 'package:t20worldcup/widgets/check_internet.dart';

import 'package:t20worldcup/widgets/homeitem.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.purple,
            statusBarIconBrightness: Brightness.light),
        backgroundColor: Colors.purple,
        title: const Text(
          'T20 World Cup',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          Icon(
            Icons.star,
            size: 40,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: const AppDarwer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: [
            HomeItem(
              title: 'Schedule',
              icon: Icons.access_time,
              onPress: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const ScheduleScreen();
                }));
              },
            ),
            HomeItem(
              title: 'Venues',
              icon: Icons.location_on,
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VenuesScrren(),
                    ));
              },
            ),
            HomeItem(
              title: 'History',
              icon: Icons.history,
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoryScreen(),
                    ));
              },
            ),
            HomeItem(
              title: 'Teams',
              icon: Icons.group,
              onPress: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TeamScreen(),
                ));
              },
            ),
            HomeItem(
                title: 'LiveScore',
                icon: Icons.live_tv,
                onPress: () async {
                  if (await CheckInternet.isInternetConnected()) {
                    var url =
                        "https://www.cricbuzz.com/cricket-match/live-scores";

                    if (!await launchUrl(Uri.parse(url))) {
                      throw Exception('could not connected $url');
                    }
                  } else {
                    Fluttertoast.showToast(msg: 'Internet neshta ');
                  }
                  // var url =
                  //     'https://www.cricbuzz.com/cricket-match/live-scores';

                  // if (!await launchUrl(Uri.parse(url)))
                  //   throw Exception('Could not launch $url');
                  // }
                }),
            HomeItem(
              title: 'Highlight',
              icon: Icons.video_call,
              onPress: () async {
                if (await CheckInternet.isInternetConnected()) {
                  var url = 'https://www.icc-cricket.com/video/2869705';

                  if (!await launchUrl(Uri.parse(url))) {
                    throw Exception('Could not launch $url');
                  }
                } else {
                  Fluttertoast.showToast(msg: 'internet is\t conected');
                }
              },
            ),
            // HomeItem(
            //   title: 'University',
            //   icon: Icons.group,
            //   onPress: () {
            //     Navigator.of(context).push(MaterialPageRoute(
            //       builder: (context) => const UniversityScreen(),
            //     ));
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
