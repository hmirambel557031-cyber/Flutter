import 'package:flutter/material.dart';
import 'register.dart';
import 'dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String userName = _userNameController.text;
    String password = _passwordController.text;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(username: userName, password: password),
      ),
    );
  } // _login

  void _openLoginPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mirambel Activity5')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _userNameController,
                decoration: InputDecoration(
                  labelText: 'username',
                  hintText: 'Enter your username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ), // TextField
              SizedBox(height: 15),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'password',
                  hintText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ), // TextField
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text('login'),
              ), // ElevatedButton
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _openLoginPage,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text('Register'),
              ), // ElevatedButton
            ],
          ), // Column
        ), // SingleChildScrollView
      ), // Center
    ); // Scaffold
  }
}
