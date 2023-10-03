import 'package:flutter/material.dart';

class ValidPage extends StatefulWidget {
  const ValidPage({Key? key}) : super(key: key);

  @override
  State<ValidPage> createState() => _ValidPageState();
}

class _ValidPageState extends State<ValidPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Validation"),
        leading: const Icon(Icons.filter_vintage),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
//form
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const Text(
                "Form-Validation In Flutter ",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
//styling
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-Mail'),
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.always,
                onFieldSubmitted: (value) {
//Validator
                },
              ),
//box styling
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
//text input
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {},
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a valid password!';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              MaterialButton(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                onPressed: () {
                  final isValid = _formKey.currentState!.validate();
                  if (!isValid) {
                    return;
                  } else {
                    _formKey.currentState!.save();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
