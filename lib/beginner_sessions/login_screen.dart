import 'package:flutter/material.dart';
import 'package:ieee_sessions/beginner_sessions/points_counter.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (val) {
                  print(emailController.text);
                },
                validator: (v) {
                  if (v!.isEmpty) {
                    return 'must not be empty';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  //contentPadding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                  labelText: 'Email',
                  hintText: 'Email Address...',

                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordController,
                //keyboardType: TextInputType.emailAddress,

                onFieldSubmitted: (val) {},
                onChanged: (val) {},
                validator: (v) {
                  if (v!.isEmpty) {
                    return 'must not be empty';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  //contentPadding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                  labelText: 'Password',
                  hintText: 'enter password...',

                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if(formKey.currentState!.validate()){

                  }
                },
                child: Text('Go'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
