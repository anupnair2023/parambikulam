import 'package:flutter/material.dart';
import 'package:parambikulam/homepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
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
              left: 140,
              child: Center(
                  child: Text(
                "PARAMBIKULAM",
                style: TextStyle(color: Colors.white),
              ))),

          const Positioned(
              top: 130,
              left: 140,
              child: Center(
                  child: Text(
                "TIGER RESERVE",
                style: TextStyle(color: Colors.white),
              ))),

          SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Align children in the center vertically
                crossAxisAlignment: CrossAxisAlignment.center,

                // Align children in the center horizontally
                children: <Widget>[
                  const SizedBox(
                    width: 100.0, // Set the desired width
                    height: 500.0, // Set the desired height
                    // Replace with the widget you want to size
                  ),

                  const Text(
                    'Please Login to Continue',
                    style: TextStyle(
                      color: Colors.white, // Change to your desired color
                      fontSize: 16.0, // Set the font size
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
                          color:
                              Color(0xffFFFFFF), // Change to your desired color
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
                          style: const TextStyle(
                            color: Color.fromARGB(255, 11, 11,
                                11), // Change to your desired color
                            fontSize: 10.0, // Set the font size
                            fontWeight: FontWeight.bold, // Set the font weight
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

                  const SizedBox(height: 20),

                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'password',
                        style: TextStyle(
                          color:
                              Color(0xffFFFFFF), // Change to your desired color
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
                          style: const TextStyle(
                            color: Color.fromARGB(255, 12, 12,
                                12), // Change to your desired color
                            fontSize: 10.0, // Set the font size
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: const InputDecoration(
                            // labelText: 'password',
                            hintText: '......',
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

                  const SizedBox(height: 20), // // Adds spacing between widgets
                  SizedBox(
                    width: 485,
                    child: MaterialButton(
                        color: Colors.green,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: const Text('Log In',
                            style: TextStyle(
                              color: Colors.black,
                              // Change to your desired color
                              fontSize: 16.0,
                            ))),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
