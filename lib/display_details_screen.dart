import 'package:flutter/material.dart';
import 'package:user_input/home_page.dart';

class DisplayDetailsScreen extends StatelessWidget {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? occupation;

  DisplayDetailsScreen({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.occupation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset('image/hng-logo.jpeg', width: 100.0),
              ),
              const SizedBox(height: 40.0),
              Text(
                'Your Response has been recorded, below are your details',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 30.0),
              Text(
                'First Name: $firstName',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Last Name: $lastName',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Email: $email',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Occupation: $occupation',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 50.0),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF05B0FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Color(0xFF05B0FF),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Go back home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
