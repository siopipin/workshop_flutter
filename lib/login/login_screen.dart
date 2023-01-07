import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _nameState();
}

class _nameState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'data2',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('data2'),
        ],
      ),
    );
  }
}
