// class UniversityModel {
//   String? university;
//   String? department;
//   String? addres;
//   List<Item>? item;

//   UniversityModel({this.university, this.department, this.addres, this.item});

//   UniversityModel.fromJson(Map<String, dynamic> json) {
//     university = json['University'];
//     department = json['Department'];
//     addres = json['Addres'];
//     if (json['item'] != null) {
//       item = <Item>[];
//       json['item'].forEach((v) {
//         item!.add(new Item.fromJson(v));
//       });
//     }
//   }

//   get length => null;

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['University'] = this.university;
//     data['Department'] = this.department;
//     data['Addres'] = this.addres;
//     if (this.item != null) {
//       data['item'] = this.item!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Item {
//   String? name;
//   String? fName;
//   int? phone;
//   int? age;
//   String? regNo;
//   double? cGPA;

//   Item({this.name, this.fName, this.phone, this.age, this.regNo, this.cGPA});

//   Item.fromJson(Map<String, dynamic> json) {
//     name = json['Name'];
//     fName = json['FName'];
//     phone = json['Phone'];
//     age = json['Age'];
//     regNo = json['RegNo'];
//     cGPA = json['CGPA'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Name'] = this.name;
//     data['FName'] = this.fName;
//     data['Phone'] = this.phone;
//     data['Age'] = this.age;
//     data['RegNo'] = this.regNo;
//     data['CGPA'] = this.cGPA;
//     return data;
//   }
// }
