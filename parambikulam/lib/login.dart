import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:parambikulam/bloc/mainbloc.dart';
import 'package:parambikulam/homepage.dart';
import 'package:parambikulam/signup%20.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Background image
          Image.asset(
            'assets/images/loginimg.png', // Replace with your image path
            fit: BoxFit.cover,
          ),

          const Positioned(
              top: 100,
              left: 110,
              child: Center(
                  child: Text(
                "PARAMBIKULAM",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ))),

          const Positioned(
              top: 120,
              left: 120,
              child: Center(
                  child: Text(
                "TIGER RESERVE",
                style: TextStyle(
                    color: Colors.white, fontSize: 14, letterSpacing: 1.5),
              ))),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Align children in the center vertically
                  crossAxisAlignment: CrossAxisAlignment.center,

                  // Align children in the center horizontally
                  children: <Widget>[
                    const SizedBox(
                      width: 100.0, // Set the desired width
                      height: 400.0, // Set the desired height
                      // Replace with the widget you want to size
                    ),

                    const Text(
                      'Please Login to Continue',
                      style: TextStyle(
                        color: Colors.white, // Change to your desired color
                        fontSize: 12.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        // Other text style properties like fontFamily, letterSpacing, etc.
                      ),
                    ),
                    // const Text(
                    //   'username',
                    //   style: TextStyle(
                    //     color: Colors.white, // Change to your desired color
                    //     fontSize: 16.0, // Set the font size
                    //     fontWeight: FontWeight.bold, // Set the font weight
                    //     // Other text style properties like fontFamily, letterSpacing, etc.
                    //   ),
                    // ),

                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'username',
                          style: TextStyle(
                            color: Color(
                                0xffFFFFFF), // Change to your desired color
                            fontSize: 9.0, // Set the font size
                            fontWeight: FontWeight.bold, // Set the font weight
                            // Other text style properties like fontFamily, letterSpacing, etc.
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          color: Colors.white,
                          child: TextFormField(
                            controller: usernamecontroller,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 11, 11,
                                  11), // Change to your desired color
                              fontSize: 10.0, // Set the font size
                              fontWeight:
                                  FontWeight.bold, // Set the font weight
                              // Other text style properties like fontFamily, letterSpacing, etc.
                            ),
                            decoration: const InputDecoration(
                              hintText: 'abcd@gmail.com...',
                              suffixIcon: Icon(Icons.check_box),
                              border: OutlineInputBorder(),
                            ),
                            // You can add more properties and validation logic as needed
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'password',
                          style: TextStyle(
                            color: Color(
                                0xffFFFFFF), // Change to your desired color
                            fontSize: 9.0, // Set the font size
                            fontWeight: FontWeight.bold, // Set the font weight
                            // Other text style properties like fontFamily, letterSpacing, etc.
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          color: Colors.white,
                          child: TextFormField(
                            controller: passwordcontroller,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 12, 12,
                                  12), // Change to your desired color
                              fontSize: 10.0, // Set the font size
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              // labelText: 'password',
                              hintText: '......',
                              hintStyle: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),

                              suffixIcon: Icon(Icons.remove_red_eye),
                              border: OutlineInputBorder(),
                            ),
                            // You can add more properties and validation logic as needed
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                          child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "forgot password?",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                    ),

                    // const SizedBox(
                    //     height: 2.0), // // Adds spacing between widgets
                    SizedBox(
                      width: 485,
                      height: 64,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                            color: Colors.green,
                            onPressed: () {
                              //////1111
                              BlocProvider.of<LoginBloc>(context).add(
                                  VerifyPassword(
                                      password:
                                          passwordcontroller.text.toString(),
                                      name:
                                          usernamecontroller.text.toString()));
                            },
                            /////6
                            child: BlocConsumer<LoginBloc, LoginStates>(
                                builder: ((context, state) {
                              if (state is Fetching) {
                                return const CircularProgressIndicator();
                              } else {
                                return const Text('Log In',
                                    style: TextStyle(
                                      color: Colors.black,
                                      // Change to your desired color
                                      fontSize: 16.0,
                                    ));
                              }
                            }), listener: (context, state) {
                              if (state is LoginSuccess) {
                                // Fluttertoast.showToast(msg: "Login Succeded");

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomePage()));
                              } else if (state is LoginError) {
                                Fluttertoast.showToast(msg: "Login Failed");
                              }
                            })),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: SizedBox(
                        width: 100,
                        height: 50,
                        child: MaterialButton(
                          color: Colors.green,
                          child: const Text('Sign up',
                              style: TextStyle(
                                color: Colors.black,
                                // Change to your desired color
                                fontSize: 16.0,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUp())); /////1111
                          },
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
