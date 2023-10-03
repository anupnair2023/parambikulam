import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parambikulam/models/myclientmodel.dart';
import 'package:parambikulam/models/myprofilemodel.dart';
import 'package:parambikulam/models/signinmodel.dart';
import 'package:parambikulam/models/workermodel.dart';
import 'package:parambikulam/prefManager/prefmanager.dart';
import 'package:parambikulam/server/serverhelper.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  SigninModel signinModel = SigninModel();
  MyprofileModel myprofileModel = MyprofileModel();
  MyclientModel myclientModel = MyclientModel();
  MyworkersModel myworkersModel = MyworkersModel();

  LoginBloc() : super(LoginInitial()) {
    on<VerifyPassword>(verifyPassword);
    on<Registration>(registration);
    on<Signup>(signup);
    on<Navigation>(navigation);
    on<Getprofile>(getprofile);
    on<Clientdetails>(clientdetails);
    on<Workerdetails>(workerdetails);
  }
  Future<FutureOr<void>> signup(Signup event, Emitter<LoginStates> emit) async {
    ///2222
    emit(Loading());
    emit(Fetching());
    Map map = {"name": event.name, "password": event.password};

    if (event.name == "anu" && event.password == "123") {
      ////333
      emit(LoginSuccess());
    } else {
      emit(LoginError(error: "invalid"));
    }
  }

  Future<FutureOr<void>> verifyPassword(
      VerifyPassword event, Emitter<LoginStates> emit) async {
    emit(Loading());
    emit(Fetching());

    Map map = {"phone": event.name, "password": event.password};
    signinModel = SigninModel.fromJson(await WebClient.post("user/login", map));
    if (signinModel.status == true) {
      await PrefManager.setToken(signinModel.token.toString());
      print(signinModel.token.toString());
      emit(LoginSuccess());
    } else if (signinModel.status == false) {
      emit(LoginError(error: "invlid"));
    }
  }

  Future<FutureOr<void>> registration(
      Registration event, Emitter<LoginStates> emit) async {
    ///2222
    emit(Registrating());

    // emit(Fething());
    // await Future.delayed(Duration(seconds: 2));
    // LoginModel loginModel;

    Map map = {"phone": event.name, "password": event.password};

    if (event.district == "Kottayam") {
      ////333
      emit(RegisterSuccess());
    } else {
      emit(RegistrationError(error: "invalid"));
    }
    // if (loginModel.status == true) {
    //  emit(LoginSuccess());
    // } else if (loginModel.status == false) {
    //  emit(LoginError(error: "Invalid credentials"));
    // }

    // if (event.name == "abc" && event.password == "123") {
    //  emit(LoginSuccess());
    // } else {
    //  emit(LoginError(error: "Invalid credentials"));
    // }
  }

  FutureOr<void> navigation(Navigation event, Emitter<LoginStates> emit) {
    emit(Navigating());
  }

  FutureOr<void> getprofile(Getprofile event, Emitter<LoginStates> emit) async {
    emit(Getting());

    myprofileModel = MyprofileModel.fromJson(await WebClient.get(
      "profile",
    ));
    if (myprofileModel.status == true) {
      emit(Profileshown(myprofileModel: myprofileModel));
    } else if (myprofileModel.status == false) {
      emit(Profileunknown(error: myprofileModel.msg));
    }
  }

  FutureOr<void> clientdetails(
      Clientdetails event, Emitter<LoginStates> emit) async {
    emit(Getting());
    myclientModel =
        MyclientModel.fromJson(await WebClient.get("client/workers/list"));
    if (myclientModel.status == true) {
      emit(Clientsshown(myclientModel: myclientModel));
    } else if (myclientModel.status == false) {
      emit(Cannotfetch(error: "invalid"));
    }
  }

  FutureOr<void> workerdetails(
      Workerdetails event, Emitter<LoginStates> emit) async {
    emit(Loading());
    Map map = {
      "phone": event.phone,
      "name": event.name,
      "gender": "Male",
      "addess": event.address,
      "state": event.state,
      "district": event.district,
      "workTypeId": "63bd108f4b04828dc829f446",
      "dailyWage": event.dailyWage,
      "password": "qwerty",
      "overtimeAmount": 100
    };
    log(map.toString());
    myworkersModel =
        MyworkersModel.fromJson(await WebClient.post("client/add/worker", map));
    if (myworkersModel.status == true) {
      emit(Workershown(myworkersModel: MyworkersModel()));
    } else if (myworkersModel.status == false) {
      print(myworkersModel.msg);
      emit(Cannotadd(error: "invalid"));
    }
  }
}

class Workerdetails extends LoginEvents {
  final String? name,
      gender,
      address,
      state,
      district,
      workTypeId,
      dailyWage,
      password,
      phone;
  Workerdetails(
      {this.name,
      this.gender,
      this.address,
      this.state,
      this.password,
      this.dailyWage,
      this.district,
      this.phone,
      this.workTypeId});
}

class Clientdetails extends LoginEvents {
  final String? name, gender, address, state;
  Clientdetails({this.name, this.gender, this.address, this.state});
}

class LoginEvents {}

class Registration extends LoginEvents {
  final String? name, password, phone, email, district;

  Registration(
      {this.name, this.password, this.phone, this.email, this.district});
}

class Register extends LoginEvents {
  final String? name, password;

  Register({this.name, this.password});
}

class VerifyPassword extends LoginEvents {
  final String? name, password;

  VerifyPassword({this.name, this.password});
}

class Getprofile extends LoginEvents {
  final String? name, password;

  Getprofile({this.name, this.password});
}

class Payment extends LoginEvents {
  final String? name, password;

  Payment({this.name, this.password});
}

class Navigation extends LoginEvents {
  final String? name, password;

  Navigation({this.name, this.password});
}

class Signup extends LoginEvents {
  final String? name, phone, password, email, district;

  Signup({this.name, this.password, this.phone, this.email, this.district});
}

class LoginStates {}

class LoginInitial extends LoginStates {}

class Loading extends LoginStates {}

class Fetching extends LoginStates {}

class Navigating extends LoginStates {}

class Getting extends LoginStates {}

class Workershown extends LoginStates {
  final MyworkersModel? myworkersModel;
  Workershown({this.myworkersModel});
}

class Cannotadd extends LoginStates {
  final String? error;

  Cannotadd({this.error});
}

class Profileshown extends LoginStates {
  final MyprofileModel? myprofileModel;
  Profileshown({this.myprofileModel});
}

class Clientsshown extends LoginStates {
  final MyclientModel? myclientModel;
  Clientsshown({this.myclientModel});
}

class Cannotfetch extends LoginStates {
  final String? error;
  Cannotfetch({this.error});
}

class Profileunknown extends LoginStates {
  final String? error;
  Profileunknown({this.error});
}

class Registrating extends LoginStates {}

class RegisterSuccess extends LoginStates {}

class RegistrationError extends LoginStates {
  final String? error;

  RegistrationError({this.error});
}

class LoginSuccess extends LoginStates {}

class LoginError extends LoginStates {
  final String? error;

  LoginError({this.error});
}
