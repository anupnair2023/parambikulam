import 'package:flutter/material.dart';
import 'package:parambikulam/ratepage.dart';

class PrgmPage extends StatefulWidget {
  const PrgmPage({Key? key}) : super(key: key);

  @override
  State<PrgmPage> createState() => _PrgmPageState();
}

class _PrgmPageState extends State<PrgmPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.8,
            child: GridView.count(
                crossAxisCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.2),
                mainAxisSpacing: 10.0,
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            child: SizedBox(
                              height: 150,
                              width: 100,
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                child: Image.asset(
                                  'assets/images/bg.png', // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Ratepage()));
                            },
                          ),
                          const SizedBox(
                            // Set the desired width
                            height: 4.0, // Set the desired height
                            // Replace with the widget you want to size
                          ),
                          const Text(
                            "Jungle Safari",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            // Set the desired width
                            height: 4.0, // Set the desired height
                            // Replace with the widget you want to size
                          ),
                          const Text(
                            "Booking Available",
                            style: TextStyle(
                              color: Color(0xff68D389),
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Previous Booking',
                  style: TextStyle(
                    color: Colors.white,
                    // Change to your desired color
                    fontSize: 16.0,
                  )),
              Row(
                children: const [
                  Text('View all',
                      style: TextStyle(
                        color: Colors.white,
                        // Change to your desired color
                        fontSize: 16.0,
                      )),
                  Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                padding: const EdgeInsets.all(14),
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((BuildContext context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            child: Image.asset(
                              'assets/images/bg.png',
                              fit: BoxFit.cover,
                              width: 50,
                              height: 50, // Replace with your image path
                            ),
                          ),
                          const SizedBox(
                            // Set the desired width
                            width: 20.0, // Set the desired height
                            // Replace with the widget you want to size
                          ),
                          Column(
                            children: const [
                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Combo Package (Safari, Trekking, Rafting etc & including food) ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Indian Adult X 1     Foreign Student X 2    Indian Student X 2 ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Indian Adult X 1     Foreign Student X 2    ",
                                  style: TextStyle(
                                    color: Color(0xff68D389),
                                    fontSize: 8,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ),
                      const SizedBox(
                        // Set the desired width
                        height: 20.0, // Set the desired height
                        // Replace with the widget you want to size
                      ),
                    ],
                  );
                })),
          )
        ],
      ),
    );
  }
}
