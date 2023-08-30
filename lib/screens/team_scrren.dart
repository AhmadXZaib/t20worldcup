import 'package:flutter/material.dart';
import 'package:t20worldcup/models/team_model.dart';
import 'package:t20worldcup/utility/teamdatahandler.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.purple,
          title: const Text(
            'Teams',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        body: FutureBuilder(
          future: TeamDataHandle.getAllTeam(context),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            var myData = snapshot.data;
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: myData.length,
                itemBuilder: (context, index) {
                  TeamModel team = snapshot.data[index];
                  return Container(
                    padding: const EdgeInsets.only(left: 20),
                    margin: const EdgeInsets.all(12),
                    height: 130,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.purple,
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            team.flag,
                            fit: BoxFit.cover,
                            height: 90,
                            width: 110,
                          ),
                        ),
                        const SizedBox(
                          width: 17,
                        ),
                        Text(
                          team.fullName,
                          style: const TextStyle(
                              fontSize: 25, color: Colors.white),
                        )
                      ],
                    ),
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
