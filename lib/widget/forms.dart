import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  final _formkey = GlobalKey<FormState>();

  trysubmit() {
    final isvalid = _formkey.currentState!.validate();
    if (isvalid) {
      _formkey.currentState!.save();

      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form '),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter First Name'),
                    key: ValueKey('firstname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'First Name Should not be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter Last Name'),
                    key: ValueKey('lastname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Last Name Should not be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter your e-mail'),
                    key: ValueKey('E-mail'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'You must provide your mail';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration:
                        InputDecoration(hintText: 'Enter Your Password'),
                    key: ValueKey('Password'),
                    validator: (value) {
                      if (value.toString().length <= 5) {
                        return 'Minimum Length for password should be 6';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  SizedBox(height: 20),
                  TextButton(
                      onPressed: () {
                        trysubmit();
                      },
                      child: Text(
                        'Submit',
                        selectionColor: Colors.blue,
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
