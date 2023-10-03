class SigninModel {
  bool? status;
  String? token;
  String? role;
  String? id;
  String? msg;

  SigninModel({this.status, this.token, this.role, this.id, this.msg});

  SigninModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
    role = json['role'];
    id = json['id'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    // ignore: unnecessary_this
    data['status'] = this.status;
    data['token'] = token;
    data['role'] = role;
    data['id'] = id;
    data['msg'] = msg;
    return data;
  }
}
