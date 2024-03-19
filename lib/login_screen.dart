import 'package:flutter/material.dart';
import 'package:flutter_firebase/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Login to your Account',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Image.network(
                        width: 300,
                        'https://img.freepik.com/free-vector/mobile-browsers-concept-illustration_114360-1267.jpg?t=st=1710784978~exp=1710785578~hmac=57588d7978b200ff1ba9b1f2495080e72ea6a09433379c7237d3c38cd8c4b4be'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: 340,
                          height: 70,
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.blue, // background (button) color
                              foregroundColor:
                                  Colors.white, // foreground (text) color
                            ),
                            onPressed: () => {},
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterScreen()));
                            },
                            child: Text(
                              'Dont have an account ? Sign Up',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[900]),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
