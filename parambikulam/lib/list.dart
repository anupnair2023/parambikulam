import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parambikulam/bloc/mainbloc.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  void initState() {
    BlocProvider.of<LoginBloc>(context).add(Clientdetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.black,
        ),
        body: BlocBuilder<LoginBloc, LoginStates>(builder: ((context, state) {
          if (state is Getting) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is Clientsshown) {
            return Column(
              children: [
                SizedBox(
                  height: 600,
                  child: ListView.builder(
                      itemCount: state.myclientModel!.data!.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              color: Colors.grey,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.person,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    // Set the desired width
                                    width: 50.0, // Set the desired height
                                    // Replace with the widget you want to size
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        // Set the desired width
                                        height: 20.0, // Set the desired height
                                        // Replace with the widget you want to size
                                      ),
                                      Text(
                                          state.myclientModel!.data![index].name
                                              .toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            // Change to your desired color
                                            fontSize: 16.0,
                                          )),
                                      Text(
                                          state.myclientModel!.data![index]
                                              .district
                                              .toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            // Change to your desired color
                                            fontSize: 16.0,
                                          )),
                                      Text(
                                          state.myclientModel!.data![index]
                                              .gender
                                              .toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            // Change to your desired color
                                            fontSize: 16.0,
                                          )),
                                      Text(
                                          state.myclientModel!.data![index]
                                              .dailyWage
                                              .toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            // Change to your desired color
                                            fontSize: 16.0,
                                          )),
                                      const SizedBox(
                                        // Set the desired width
                                        height: 20.0, // Set the desired height
                                        // Replace with the widget you want to size
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            );
          } else if (state is Cannotfetch) {
            return Text(state.error!);
          } else {
            return const CircularProgressIndicator();
          }
        })));
  }
}
