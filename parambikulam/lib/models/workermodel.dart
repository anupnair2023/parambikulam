class MyworkersModel {
  bool? status;
  String? msg;
  String? id;

  MyworkersModel({this.status, this.msg, this.id});

  MyworkersModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['msg'] = msg;
    data['id'] = id;
    return data;
  }
}
