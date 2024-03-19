import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_firebase/login_screen.dart';
import 'package:flutter_firebase/register_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '..............................................',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Container(),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 340,
                    height: 80,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.white, // background (button) color
                          foregroundColor:
                              Colors.black, // foreground (text) color
                          side: BorderSide(width: 3)),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()))
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 340,
                    height: 80,
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.blue, // background (button) color
                        foregroundColor:
                            Colors.white, // foreground (text) color
                      ),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()))
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
