import 'package:atm_app/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              Image.asset(
                'assets/app_logo.png',
                height: 150,
              ),
              const SizedBox(height: 50),
              TextFormField(
                initialValue: '2821070007490',
                decoration: const InputDecoration(
                  hintText: 'Account Number',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextFormField(
                initialValue: '12345',
                decoration: const InputDecoration(
                  hintText: 'PIN',
                ),
                keyboardType: TextInputType.number,
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: const Text('ENTER'),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff6d7ed6),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Forgot AC Number or PIN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'REGISTER NOW',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff6d7ed6),
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.message),
            Icon(Icons.call),
          ],
        ),
        height: 60,
      ),
    );
  }
}
