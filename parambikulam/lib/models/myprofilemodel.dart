class MyprofileModel {
  bool? status;
  String? msg;
  String? token;
  Data? data;

  MyprofileModel({this.status, this.msg, this.data, this.token});

  MyprofileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['msg'] = msg;

    data['token'] = token;

    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? role;
  int? usertype;
  String? status;
  String? phone;
  String? name;
  String? email;
  String? password;
  String? createDate;
  String? updateDate;
  int? iV;
  ClientId? clientId;

  Data(
      {this.sId,
      this.role,
      this.usertype,
      this.status,
      this.phone,
      this.name,
      this.email,
      this.password,
      this.createDate,
      this.updateDate,
      this.iV,
      this.clientId});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    role = json['role'];
    usertype = json['usertype'];
    status = json['status'];
    phone = json['phone'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    iV = json['__v'];
    clientId =
        json['clientId'] != null ? ClientId.fromJson(json['clientId']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['role'] = role;
    data['usertype'] = usertype;
    data['status'] = status;
    data['phone'] = phone;
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['__v'] = iV;
    if (clientId != null) {
      data['clientId'] = clientId!.toJson();
    }
    return data;
  }
}

class ClientId {
  String? sId;
  String? status;
  String? userId;
  int? phone;
  String? contactPersonName;
  String? companyName;
  String? contactAddress;
  String? email;
  String? createDate;
  String? updateDate;
  int? iV;

  ClientId(
      {this.sId,
      this.status,
      this.userId,
      this.phone,
      this.contactPersonName,
      this.companyName,
      this.contactAddress,
      this.email,
      this.createDate,
      this.updateDate,
      this.iV});

  ClientId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    status = json['status'];
    userId = json['userId'];
    phone = json['phone'];
    contactPersonName = json['contactPersonName'];
    companyName = json['companyName'];
    contactAddress = json['contactAddress'];
    email = json['email'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['status'] = status;
    data['userId'] = userId;
    data['phone'] = phone;
    data['contactPersonName'] = contactPersonName;
    data['companyName'] = companyName;
    data['contactAddress'] = contactAddress;
    data['email'] = email;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['__v'] = iV;
    return data;
  }
}
