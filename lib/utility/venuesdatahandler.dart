import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:t20worldcup/models/venues_model.dart';

class VenuesDataHandler {
  static Future<List<VenuesModel>> getAllVenues(BuildContext context) async {
    var venues = <VenuesModel>[];

    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');

    var jsonData = json.decode(data);

    var venuesData = jsonData['venues'];

    for (var loopData in venuesData) {
      venues.add(VenuesModel.fromJOSN(loopData));
    }

    return venues;
  }
}
