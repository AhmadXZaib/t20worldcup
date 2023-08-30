class HistorModel {
  String winner;
  String runnerUp;
  String host;
  String winnerFlag;
  String runnerUpFlag;
  String year;

  HistorModel({
    required this.host,
    required this.runnerUp,
    required this.runnerUpFlag,
    required this.winner,
    required this.winnerFlag,
    required this.year,
  });

  static HistorModel fromJSON(Map<String, dynamic> map) {
    return HistorModel(
        host: map['host'],
        runnerUp: map['runnerUp'],
        runnerUpFlag: map['runnerUpFlag'],
        winner: map['winner'],
        winnerFlag: map['winnerFlag'],
        year: map['year']);
  }
}
