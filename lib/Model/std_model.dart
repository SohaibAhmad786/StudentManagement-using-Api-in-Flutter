// ignore_for_file: unnecessary_this, prefer_collection_literals, camel_case_types

class student_model {
  int? iD;
  String? sNAME;
  int? aGE;
  String? gENDER;

  student_model({this.iD, this.sNAME, this.aGE, this.gENDER});

  student_model.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    sNAME = json['SNAME'];
    aGE = json['AGE'];
    gENDER = json['GENDER'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['SNAME'] = this.sNAME;
    data['AGE'] = this.aGE;
    data['GENDER'] = this.gENDER;
    return data;
    
  }
}
