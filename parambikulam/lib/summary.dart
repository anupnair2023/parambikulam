import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Summarypage extends StatefulWidget {
  const Summarypage({Key? key}) : super(key: key);

  @override
  State<Summarypage> createState() => _SummarypageState();
}

class _SummarypageState extends State<Summarypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1f),
      appBar: AppBar(
        title: const Text("Jungle Safari"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/loginimg.png'), // Replace with your image asset
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              // Set the desired width
              height: 50, //  // Replace with the widget you want to size
            ),
            const Text('Booking Summary',
                style: TextStyle(
                  color: Colors.white,
                  // Change to your desired color
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              // Set the desired width
              height: 30, //  // Replace with the widget you want to size
            ),
            Container(
              height: 220,
              width: 500,
              color: const Color(0xff292929),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      // Set the desired width
                      height:
                          20, //  // Replace with the widget you want to size
                    ),
                    Text('Selected Date',
                        style: TextStyle(
                          color: Colors.grey,
                          // Change to your desired color
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      // Set the desired width
                      height: 5, //  // Replace with the widget you want to size
                    ),
                    Text('March 14, 2021',
                        style: TextStyle(
                          color: Colors.white,
                          // Change to your desired color
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      // Set the desired width
                      height:
                          20, //  // Replace with the widget you want to size
                    ),
                    Text('Package',
                        style: TextStyle(
                          color: Colors.grey,
                          // Change to your desired color
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      // Set the desired width
                      height: 5, //  // Replace with the widget you want to size
                    ),
                    Text(
                        'Combo Package (Safari, Trekking, Rafting etc & including food) Jungle Safari',
                        style: TextStyle(
                          color: Colors.white,
                          // Change to your desired color
                          fontSize: 18.0,
                          // fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              // Set the desired width
              height: 30, //  // Replace with the widget you want to size
            ),
            const Text('Select Time Slot',
                style: TextStyle(
                  color: Colors.white,
                  // Change to your desired color
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                )),
            Expanded(
              child:
                  ListView.builder(itemBuilder: (BuildContext context, index) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('8:30 AM - 10:30 AM',
                          style: TextStyle(
                            color: Colors.white,
                            // Change to your desired color
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('8:30 AM - 11 AM',
                          style: TextStyle(
                            color: Colors.white,
                            // Change to your desired color
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('8:30 AM - 12 AM',
                          style: TextStyle(
                            color: Colors.white,
                            // Change to your desired color
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('8:30 AM - 1 AM',
                          style: TextStyle(
                            color: Colors.white,
                            // Change to your desired color
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
