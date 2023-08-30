import 'dart:convert';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:t20worldcup/models/schedule_model.dart';

class ScheduleDataHandler {
  static Future<List<ScheduleModel>> getAllMatches(BuildContext context) async {
    List<ScheduleModel> match = [];

    var assetbundle = DefaultAssetBundle.of(context);
    var data = await assetbundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);
    List<dynamic> scheduleData = jsonData['schedule'];

    for (var i in scheduleData) {
      match.add(ScheduleModel.fromJSON(i));
      log("message");
    }
    // print(match.length);

    // return Model.fromJson(jsonData);

    return match;
  }
}
