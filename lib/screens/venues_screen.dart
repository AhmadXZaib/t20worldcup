import 'package:flutter/material.dart';
import 'package:t20worldcup/models/venues_model.dart';
import 'package:t20worldcup/utility/venuesdatahandler.dart';

class VenuesScrren extends StatefulWidget {
  const VenuesScrren({super.key});

  @override
  State<VenuesScrren> createState() => _VenuesScrrenState();
}

class _VenuesScrrenState extends State<VenuesScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Venues',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: FutureBuilder(
        future: VenuesDataHandler.getAllVenues(context),
        builder:
            (BuildContext context, AsyncSnapshot<List<VenuesModel>> snapshot) {
          var mydata = snapshot.data;
          if (snapshot.hasData) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: mydata!.length,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.all(12),
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 2,
                            color: Color.fromARGB(255, 121, 100, 100),
                          ),
                        ],
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Country: ${mydata[index].country}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'City: ${mydata[index].city}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(
                          mydata[index].stadium,
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                mydata[index].images,
                                width: 387,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    ));
              },
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text("has Error"));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
