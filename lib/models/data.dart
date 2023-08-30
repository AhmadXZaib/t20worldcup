class Model {
  List<Schedule>? schedule;
  List<Venues>? venues;
  List<Teams>? teams;
  List<History>? history;

  Model({this.schedule, this.venues, this.teams, this.history});

  Model.fromJson(Map<String, dynamic> json) {
    if (json['schedule'] != null) {
      schedule = <Schedule>[];
      json['schedule'].forEach((v) {
        schedule!.add(new Schedule.fromJson(v));
      });
    }
    if (json['venues'] != null) {
      venues = <Venues>[];
      json['venues'].forEach((v) {
        venues!.add(new Venues.fromJson(v));
      });
    }
    if (json['teams'] != null) {
      teams = <Teams>[];
      json['teams'].forEach((v) {
        teams!.add(new Teams.fromJson(v));
      });
    }
    if (json['history'] != null) {
      history = <History>[];
      json['history'].forEach((v) {
        history!.add(new History.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.schedule != null) {
      data['schedule'] = this.schedule!.map((v) => v.toJson()).toList();
    }
    if (this.venues != null) {
      data['venues'] = this.venues!.map((v) => v.toJson()).toList();
    }
    if (this.teams != null) {
      data['teams'] = this.teams!.map((v) => v.toJson()).toList();
    }
    if (this.history != null) {
      data['history'] = this.history!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Schedule {
  String? date;
  String? teamOne;
  String? teamTwo;
  String? flagOne;
  String? flagTwo;
  String? group;
  String? venue;
  String? time;

  Schedule(
      {this.date,
      this.teamOne,
      this.teamTwo,
      this.flagOne,
      this.flagTwo,
      this.group,
      this.venue,
      this.time});

  Schedule.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    teamOne = json['teamOne'];
    teamTwo = json['teamTwo'];
    flagOne = json['flagOne'];
    flagTwo = json['flagTwo'];
    group = json['group'];
    venue = json['venue'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['teamOne'] = this.teamOne;
    data['teamTwo'] = this.teamTwo;
    data['flagOne'] = this.flagOne;
    data['flagTwo'] = this.flagTwo;
    data['group'] = this.group;
    data['venue'] = this.venue;
    data['time'] = this.time;
    return data;
  }
}

class Venues {
  String? country;
  String? city;
  String? stadium;
  String? image;

  Venues({this.country, this.city, this.stadium, this.image});

  Venues.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    city = json['city'];
    stadium = json['stadium'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['city'] = this.city;
    data['stadium'] = this.stadium;
    data['image'] = this.image;
    return data;
  }
}

class Teams {
  String? fullName;
  String? shortName;
  String? flag;

  Teams({this.fullName, this.shortName, this.flag});

  Teams.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    shortName = json['shortName'];
    flag = json['flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['shortName'] = this.shortName;
    data['flag'] = this.flag;
    return data;
  }
}

class History {
  String? winner;
  String? runnerUp;
  String? host;
  String? winnerFlag;
  String? runnerUpFlag;
  String? year;

  History(
      {this.winner,
      this.runnerUp,
      this.host,
      this.winnerFlag,
      this.runnerUpFlag,
      this.year});

  History.fromJson(Map<String, dynamic> json) {
    winner = json['winner'];
    runnerUp = json['runnerUp'];
    host = json['host'];
    winnerFlag = json['winnerFlag'];
    runnerUpFlag = json['runnerUpFlag'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['winner'] = this.winner;
    data['runnerUp'] = this.runnerUp;
    data['host'] = this.host;
    data['winnerFlag'] = this.winnerFlag;
    data['runnerUpFlag'] = this.runnerUpFlag;
    data['year'] = this.year;
    return data;
  }
}
