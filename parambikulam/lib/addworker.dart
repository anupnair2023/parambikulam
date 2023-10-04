import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parambikulam/bloc/mainbloc.dart';
import 'package:parambikulam/homepage.dart';

class NewworkerPage extends StatefulWidget {
  const NewworkerPage({Key? key}) : super(key: key);

  @override
  State<NewworkerPage> createState() => _NewworkerPageState();
}

class _NewworkerPageState extends State<NewworkerPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController gendercontroller = TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();
  final TextEditingController statecontroller = TextEditingController();
  final TextEditingController districtcontroller = TextEditingController();
  final TextEditingController workTypeIdcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController dailyWagecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  String? selectedValue = 'female';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  // Set the desired width
                  height: 20.0, // Set the desired height
                  // Replace with the widget you want to size
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        // Other text style properties like fontFamily, letterSpacing, etc.
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  controller: namecontroller,
                  style: const TextStyle(
                    color: Color.fromARGB(
                        255, 11, 11, 11), // Change to your desired color
                    fontSize: 10.0, // Set the font size
                    fontWeight: FontWeight.bold, // Set the font weight
                    // Other text style properties like fontFamily, letterSpacing, etc.
                  ),
                  decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  // Set the desired width
                  width: 50.0, // Set the desired height
                  // Replace with the widget you want to size
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Gender',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        // Other text style properties like fontFamily, letterSpacing, etc.
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 350,
                    color: Colors.grey,
                    child: DropdownButton<String>(
                      iconEnabledColor: Colors.black,
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      },
                      items: <String>[
                        'male',
                        'female',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      underline: Container(
                        // Replace the underline with an empty Container
                        height: 0,
                        color: Colors
                            .transparent, // Set transparent color to hide the line
                      ),
                    ),
                  ),
                ),
                // TextFormField(
                //   controller: gendercontroller,
                //   style: const TextStyle(
                //     color: Color.fromARGB(
                //         255, 11, 11, 11), // Change to your desired color
                //     fontSize: 10.0, // Set the font size
                //     fontWeight: FontWeight.bold, // Set the font weight
                //     // Other text style properties like fontFamily, letterSpacing, etc.
                //   ),
                //   decoration: const InputDecoration(
                //     fillColor: Colors.grey,
                //     filled: true,
                //     border: OutlineInputBorder(),
                //   ),
                // ),
                const SizedBox(
                  // Set the desired width
                  width: 50.0, // Set the desired height
                  // Replace with the widget you want to size
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        // Other text style properties like fontFamily, letterSpacing, etc.
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  controller: addresscontroller,
                  style: const TextStyle(
                    color: Color.fromARGB(
                        255, 11, 11, 11), // Change to your desired color
                    fontSize: 10.0, // Set the font size
                    fontWeight: FontWeight.bold, // Set the font weight
                    // Other text style properties like fontFamily, letterSpacing, etc.
                  ),
                  decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  // Set the desired width
                  width: 50.0, // Set the desired height
                  // Replace with the widget you want to size
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'state',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 12.0, // Set the font size
                        fontWeight: FontWeight.bold,

                        // Set the font weight
                        // Other text style properties like fontFamily, letterSpacing, etc.
                      ),
                    ),
                  ),
                ),
                // TextFormField(

                //   controller: statecontroller,
                //   style: const TextStyle(
                //     color: Color.fromARGB(
                //         255, 11, 11, 11), // Change to your desired color
                //     fontSize: 10.0, // Set the font size
                //     fontWeight: FontWeight.bold, // Set the font weight
                //     // Other text style properties like fontFamily, letterSpacing, etc.
                //   ),
                //   decoration: const InputDecoration(
                //     fillColor: Colors.grey,
                //     filled: true,
                //     border: OutlineInputBorder(),
                //   ),
                // ),
                const SizedBox(
                  // Set the desired width
                  width: 50.0, // Set the desired height
                  // Replace with the widget you want to size
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'District',
                      style: TextStyle(
                        color: Colors.black, // Chang,e to your desired color
                        fontSize: 12.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        // Other text style properties like fontFamily, letterSpacing, etc.
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  controller: districtcontroller,
                  style: const TextStyle(
                    color: Color.fromARGB(
                        255, 11, 11, 11), // Change to your desired color
                    fontSize: 10.0, // Set the font size
                    fontWeight: FontWeight.bold, // Set the font weight
                    // Other text style properties like fontFamily, letterSpacing, etc.
                  ),
                  decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  // Set the desired width
                  width: 50.0, // Set the desired height
                  // Replace with the widget you want to size
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Worktypid',
                      style: TextStyle(
                        color: Colors.black, // Change to your desired color
                        fontSize: 12.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        // Other text style properties like fontFamily, letterSpacing, etc.
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  controller: workTypeIdcontroller,
                  style: const TextStyle(
                    color: Color.fromARGB(
                        255, 11, 11, 11), // Change to your desired color
                    fontSize: 10.0, // Set the font size
                    fontWeight: FontWeight.bold, // Set the font weight
                    // Other text style properties like fontFamily, letterSpacing, etc.
                  ),
                  decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  // Set the desired width
                  width: 50.0, // Set the desired height
                  // Replace with the widget you want to size
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'phone',
                      style: TextStyle(
                        color: Colors.black, //, Change to your desired color
                        fontSize: 12.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        // Other text style properties like fontFamily, letterSpacing, etc.
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: phonecontroller,
                  style: const TextStyle(
                    color: Color.fromARGB(
                        255, 11, 11, 11), // Change to your desired color
                    fontSize: 10.0, // Set the font size
                    fontWeight: FontWeight.bold, // Set the font weight
                    // Other text style properties like fontFamily, letterSpacing, etc.
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter a phone number';
                    } else if (!isValidPhonenumber(value)) {
                      return 'invalid phone number';
                    }
                    return null;
                  },
                  // bool isValidPhonenumber(string value){
                  //    final RegExp phoneRegex = RegExp(r'^\d{10}$');
                  //    return phoneRegex.hasMatch(value);
                  // },
                  decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  // Set the desired width
                  width: 50.0, // Set the desired height
                  // Replace with the widget you want to size
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'dailywage',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        // Other text style properties like fontFamily, letterSpacing, etc.
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: dailyWagecontroller,
                  style: const TextStyle(
                    color: Color.fromARGB(
                        255, 11, 11, 11), // Change to your desired color
                    fontSize: 10.0, // Set the font size
                    fontWeight: FontWeight.bold, // Set the font weight
                    // Other text style properties like fontFamily, letterSpacing, etc.
                  ),
                  decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  // Set the desired width
                  width: 50.0, // Set the desired height
                  // Replace with the widget you want to size
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'password',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        // Other text style properties like fontFamily, letterSpacing, etc.
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  controller: passwordcontroller,
                  style: const TextStyle(
                    color: Color.fromARGB(
                        255, 11, 11, 11), // Change to your desired color
                    fontSize: 10.0, // Set the font size
                    fontWeight: FontWeight.bold, // Set the font weight
                    // Other text style properties like fontFamily, letterSpacing, etc.
                  ),
                  decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  // Set the desired width
                  width: 50.0, // Set the desired height
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
                          if (state is Loading) {
                            return const CircularProgressIndicator();
                          } else {
                            return const Text('Add',
                                style: TextStyle(
                                  color: Colors.black,
                                  // Change to your desired color
                                  fontSize: 16.0,
                                ));
                          }
                        }), listener: (context, state) {
                          if (state is Workershown) {
                            // Fluttertoast.showToast(msg: "Login Succeded");

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          }
                        }),
                        onPressed: () {
                          ///11
                          BlocProvider.of<LoginBloc>(context).add(Workerdetails(
                              name: namecontroller.text.toString(),
                              workTypeId: workTypeIdcontroller.text.toString(),
                              address: addresscontroller.text.toString(),
                              dailyWage: dailyWagecontroller.text.toString(),
                              phone: phonecontroller.text.toString(),
                              gender: gendercontroller.text.toString(),
                              state: statecontroller.text.toString(),
                              password: passwordcontroller.text.toString(),
                              district: districtcontroller.text.toString()));
                          if (_formKey.currentState!.validate()) {
                            // Form is valid, perform submission
                            // Your logic here
                          }

                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //}         builder: (context) =>
                        } //             const HomePage())); /////1111

                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isValidPhonenumber(String value) {
    final RegExp phoneRegex = RegExp(r'^\d{10}$');
    return phoneRegex.hasMatch(value);
  }
}
