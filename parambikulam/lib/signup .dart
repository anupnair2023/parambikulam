import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:parambikulam/bloc/mainbloc.dart';
import 'package:parambikulam/validation.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignupState();
}

class _SignupState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController districtcontroller = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();

  String selectedValue = 'Kottayam';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Sign up"), backgroundColor: Colors.black),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Name',
                      style: TextStyle(
                        color: Colors.black, // Change to your desired color
                        fontSize: 16.0, // Set the font size
                        fontWeight: FontWeight.bold,
                      )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      color: Colors.black,
                      child: TextFormField(
                        controller: namecontroller,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0, // Set the font size
                          fontWeight: FontWeight.bold,
                          // Set the font weight
                          // Other text style properties like fontFamily, letterSpacing, etc.
                        ),
                      ),
                    ),
                  ),
                  const Text('Phone',
                      style: TextStyle(
                        color: Colors.black, // Change to your desired color
                        fontSize: 16.0, // Set the font size
                        fontWeight: FontWeight.bold,
                      )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      color: Colors.black,
                      child: TextFormField(
                        controller: phonecontroller,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0, // Set the font size
                          fontWeight: FontWeight.bold, // Set the font weight
                          // Other text style properties like fontFamily, letterSpacing, etc.
                        ),
                      ),
                    ),
                  ),
                  const Text('Password',
                      style: TextStyle(
                        color: Colors.black, // Change to your desired color
                        fontSize: 16.0, // Set the font size
                        fontWeight: FontWeight.bold,
                      )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      color: Colors.black,
                      child: TextFormField(
                        controller: passwordcontroller,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0, // Set the font size
                          fontWeight: FontWeight.bold, // Set the font weight
                          // Other text style properties like fontFamily, letterSpacing, etc.
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter a valid password!';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const Text('email',
                      style: TextStyle(
                        color: Colors.black, // Change to your desired color
                        fontSize: 16.0, // Set the font size
                        fontWeight: FontWeight.bold,
                      )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      color: Colors.black,
                      child: TextFormField(
                        // autovalidateMode: AutovalidateMode.always,
                        controller: emailcontroller,
                        style: const TextStyle(
                          color: Colors.grey, // Change to your desired color
                          fontSize: 10.0, // Set the font size
                          fontWeight: FontWeight.bold, // Set the font weight
                          // Other text style properties like fontFamily, letterSpacing, etc.
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                            return 'Enter a valid email!';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const Text('district',
                      style: TextStyle(
                        color: Colors.black, // Change to your desired color
                        fontSize: 16.0, // Set the font size
                        fontWeight: FontWeight.bold,
                      )),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(6),
                  //   child: Container(
                  //     color: Colors.black,
                  //     child: TextFormField(
                  //       style: const TextStyle(
                  //         color: Colors.grey,
                  //         // Change to your desired color
                  //         fontSize: 10.0, // Set the font size
                  //         fontWeight: FontWeight.bold, // Set the font weight
                  //         // Other text style properties like fontFamily, letterSpacing, etc.
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.grey,
                        width: 300,
                        child: DropdownButton<String>(
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              districtcontroller.text = newValue!;
                              selectedValue = newValue;
                            });
                          },
                          items: <String>[
                            'Kottayam',
                            'Kollam',
                            'Thrissur',
                            'Trivandrum',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: MaterialButton(
                        color: Colors.green,
                        // child: const Text('sign up',
                        //     style: TextStyle(
                        //       color: Colors.black,
                        //       // Change to your desired color
                        //       fontSize: 16.0,
                        //     )),

                        child: BlocConsumer<LoginBloc, LoginStates>(
                            builder: ((context, state) {
                          if (state is Registrating) {
                            return const CircularProgressIndicator();
                          } else {
                            return const Text('sign up',
                                style: TextStyle(
                                  color: Colors.black,
                                  // Change to your desired color
                                  fontSize: 16.0,
                                ));
                          }
                        }), listener: (context, state) {
                          if (state is RegisterSuccess) {
                            // Fluttertoast.showToast(msg: "Login Succeded");

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ValidPage()));
                          } else if (state is RegistrationError) {
                            Fluttertoast.showToast(msg: "signup Failed");
                          }
                        }),
                        onPressed: () {
                          final isValid = _formKey.currentState!.validate();
                          if (!isValid) {
                            return;
                          } else {
                            ///11
                            BlocProvider.of<LoginBloc>(context).add(
                                Registration(
                                    name: namecontroller.text.toString(),
                                    phone: phonecontroller.text.toString(),
                                    password:
                                        passwordcontroller.text.toString(),
                                    email: emailcontroller.text.toString(),
                                    district:
                                        districtcontroller.text.toString()));

                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //}         builder: (context) =>
                          } //             const HomePage())); /////1111
                        },
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
