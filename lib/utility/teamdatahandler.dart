import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:t20worldcup/models/team_model.dart';

// class HistoryDataHandler {
//   static Future<List<HistoryModel>> getAllHistory(BuildContext context) async {
//     var history = <HistoryModel>[];

//     var assetbundle = DefaultAssetBundle.of(context);
//     var data = await assetbundle.loadString('assets/data/ttwenty.json');

//     var jsonData = json.decode(data);
//     var historydata = jsonData['history'];

//     for (var loopData in historydata) {
//       history.add(HistoryModel.fromJSON(loopData));
//     }

//     return history;
//   }
// }

class TeamDataHandle {
  static Future<List<TeamModel>> getAllTeam(BuildContext context) async {
    var team = <TeamModel>[];

    var assetbundle = DefaultAssetBundle.of(context);
    var data = await assetbundle.loadString('assets/data/ttwenty.json');
    var jsondData = jsonDecode(data);
    var teamdata = jsondData['teams'];

    for (var looData in teamdata) {
      TeamModel teamModel = TeamModel.fromJSON(looData);
      team.add(teamModel);
    }
    return team;
  }
}
