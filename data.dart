class Model {
  String? name;
  String? fName;
  int? phone;
  int? age;
  String? regNo;

  Model({this.name, this.fName, this.phone, this.age, this.regNo});

  Model.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    fName = json['FName'];
    phone = json['Phone'];
    age = json['Age'];
    regNo = json['RegNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['FName'] = this.fName;
    data['Phone'] = this.phone;
    data['Age'] = this.age;
    data['RegNo'] = this.regNo;
    return data;
  }
}
