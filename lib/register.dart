import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _birthdateController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      _birthdateController.text = picked.toString().split(' ')[0];
    }
  }

  void _register() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _birthdateController.dispose();
    _genderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lastame Activity 2')), // AppBar
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _firstNameController,
                decoration: _inputDecoration('Full name', Icons.person),
              ), // TextField
              SizedBox(height: 15),
              TextField(
                controller: _userNameController,
                decoration: _inputDecoration('username', Icons.account_circle),
              ), // TextField
              SizedBox(height: 15),
              TextField(
                controller: _emailController,
                decoration: _inputDecoration('Password', Icons.lock),
              ), // TextField
              SizedBox(height: 15),
              TextField(
                controller: _passwordController,
                decoration: _inputDecoration('Confirm Password', Icons.lock),
              ), // TextField
              SizedBox(height: 15),
              TextField(
                controller: _phoneController,
                decoration: _inputDecoration('mobile_number', Icons.phone),
              ), // TextField
              SizedBox(height: 15),
              GestureDetector(
                onTap: _selectDate,
                child: AbsorbPointer(
                  child: TextField(
                    controller: _birthdateController,
                    decoration: _inputDecoration(
                      'Birthday',
                      Icons.calendar_today,
                    ),
                  ),
                ),
              ), // TextField
              SizedBox(height: 15),
              TextField(
                controller: _genderController,
                decoration: _inputDecoration('Gender', Icons.wc),
              ), // TextField
              SizedBox(height: 15),
              TextField(
                controller: _lastNameController,
                decoration: _inputDecoration('Civil Status', Icons.people),
              ), // TextField
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _register,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.lightBlue,
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ), // ElevatedButton
            ],
          ), // Column
        ), // SingleChildScrollView
      ), // Padding
    ); // Scaffold
  }

  InputDecoration _inputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ); // InputDecoration
  }
}
