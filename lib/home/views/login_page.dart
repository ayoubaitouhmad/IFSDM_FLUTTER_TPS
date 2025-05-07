import 'package:flutter/material.dart';
import 'package:fluttert1ex1/home/services/UserService.dart';
import '../models/user.dart';

class LoginPage extends StatefulWidget {
  final Function(User) onLogin;

  LoginPage({required this.onLogin});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final UserService _userService = UserService();
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController(text: "Alice Martin");
  final _emailController = TextEditingController(
    text: "alice.martin@example.com",
  );
  final _passwordController = TextEditingController(text: "password1");
  bool _obscurePassword = true;

  void _submit() {


    if (_formKey.currentState!.validate()) {
      User? user = _userService.checkUserCredentials(
        _emailController.text.trim(),
        _passwordController.text,
      );
      if (user != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Accéder avec succès"),
            duration: Duration(seconds: 3),
          ),
        );
        widget.onLogin(user);
        Navigator.pop(context);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("L'e-mail ou le mot de passe fourni est incorrect"),
            duration: Duration(seconds: 6),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Connexion')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nom',
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.trim().length < 2) {
                    return 'Nom invalide (min 2 caractères)';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                  if (value == null || !emailRegex.hasMatch(value)) {
                    return 'Email invalide';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() => _obscurePassword = !_obscurePassword);
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return 'Mot de passe trop court (min 6 caractères)';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),
              ElevatedButton(onPressed: _submit, child: Text('Se connecter')),
            ],
          ),
        ),
      ),
    );
  }
}
