import 'package:flutter/material.dart';
import 'package:t20worldcup/utility/historydatahandle.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'History',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: FutureBuilder(
        future: HistoryDataHandle.getALlHistory(context),
        builder: (context, snapshot) {
          var myData = snapshot.data;
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: myData!.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(12),
                  height: 230,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Hosted By ${myData[index].host} ( ${myData[index].year} )',
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Winner',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            'RunnerUp',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/flags/${myData[index].winnerFlag}',
                                  width: 90,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                myData[index].winner,
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )
                            ],
                          ),
                          const Text(
                            'Vs',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                myData[index].runnerUp,
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/flags/${myData[index].runnerUpFlag}',
                                    width: 90,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ))
                            ],
                          ),
                        ],
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
      ),
    );
  }
}
