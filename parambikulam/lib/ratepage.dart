import 'package:flutter/material.dart';
import 'package:parambikulam/summary.dart';

class Ratepage extends StatefulWidget {
  const Ratepage({Key? key}) : super(key: key);

  @override
  State<Ratepage> createState() => _RatepageState();
}

class _RatepageState extends State<Ratepage> {
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
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                // Set the desired width
                height: 15.0, // Set the desired height
                // Replace with the widget you want to size
              ),
              Column(
                children: [
                  (Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/bg.png', // Replace with your image path
                          fit: BoxFit.cover,
                          height: 120,
                          width: 120,
                        ),
                      ),
                      const SizedBox(
                        // Set the desired width
                        width:
                            20, //  // Replace with the widget you want to size
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            // Set the desired width
                            height:
                                40, //  // Replace with the widget you want to size
                          ),
                          const Text(
                            "Jungle Safari",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Booking Available",
                            style: TextStyle(
                              color: Color(0xff68D389),
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 190,
                            // width: MediaQuery.of(context).size.width,
                            child: MaterialButton(
                                color: const Color(0xff68D389),
                                onPressed: () {},
                                child: const Text('Book Now',
                                    style: TextStyle(
                                      color: Colors.black,
                                      // Change to your desired color
                                      fontSize: 16.0,
                                    ))),
                          )
                        ],
                      ),
                    ],
                  )),
                ],
              ),
              const SizedBox(
                ///jbjnkjbijk

                // Set the desired width
                height: 20, //  // Replace with the widget you want to size
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Package Rate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            padding: const EdgeInsets.all(14.0),
                            color: const Color(0xff292929),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text('Week days',
                                        style: TextStyle(
                                          color: Colors.white,
                                          // Change to your desired color
                                          fontSize: 16.0,
                                        )),
                                    Text(' 350 INR',
                                        style: TextStyle(
                                          color: Colors.white,
                                          // Change to your desired color
                                          fontSize: 16.0,
                                        )),
                                    Text('Indian',
                                        style: TextStyle(
                                          color: Colors.white,
                                          // Change to your desired color
                                          fontSize: 12.0,
                                        )),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text('INR 350',
                                        style: TextStyle(
                                          color: Colors.white,
                                          // Change to your desired color
                                          fontSize: 16.0,
                                        )),
                                    Text('forienger',
                                        style: TextStyle(
                                          color: Colors.white,
                                          // Change to your desired color
                                          fontSize: 12.0,
                                        )),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text('INR 350',
                                        style: TextStyle(
                                          color: Colors.white,
                                          // Change to your desired color
                                          fontSize: 16.0,
                                        )),
                                    Text('Children',
                                        style: TextStyle(
                                          color: Colors.white,
                                          // Change to your desired color
                                          fontSize: 12.0,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Summarypage()));
                          },
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
