import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:t20worldcup/models/history_model.dart';

class HistoryDataHandle {
  static Future<List<HistorModel>> getALlHistory(BuildContext context) async {
    var history = <HistorModel>[];

    var assetbundle = DefaultAssetBundle.of(context);

    var data = await assetbundle.loadString('assets/data/ttwenty.json');
    var jsondata = jsonDecode(data);

    var historyData = jsondata['history'];

    for (var loopdata in historyData) {
      history.add(HistorModel.fromJSON(loopdata));
    }
    return history;
  }
}
