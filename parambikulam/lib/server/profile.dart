import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parambikulam/bloc/mainbloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    BlocProvider.of<LoginBloc>(context).add(Getprofile());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Profile"), backgroundColor: Colors.black),
      body: BlocBuilder<LoginBloc, LoginStates>(builder: ((context, state) {
        if (state is Getting) {
          return const CircularProgressIndicator();
        } else if (state is Profileshown) {
          return Column(
            children: [
              const Align(
                alignment: Alignment.center,
              ),
              IconButton(
                iconSize: 140,
                icon: const CircleAvatar(
                  // radius: 300,
                  backgroundImage: AssetImage('assets/images/loginimg.png'),
                  radius: 500, // Replace with your image asset
                ),
                onPressed: () {},
              ),
              const SizedBox(
                // Set the desired width
                height: 20, //  // Replace with the widget you want to size
              ),
              Text(
                state.myprofileModel!.data!.name!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                // Set the desired width
                height: 15, //  // Replace with the widget you want to size
              ),
              Text(
                state.myprofileModel!.data!.email!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                // Set the desired width
                height: 20, //  // Replace with the widget you want to size
              ),
              Text(
                state.myprofileModel!.data!.role!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          );
        } else if (state is Profileunknown) {
          return Text(state.error!);
        } else {
          return const CircularProgressIndicator();
        }
      })),
    );
  }
}
