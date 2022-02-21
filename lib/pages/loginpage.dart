import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            height: 220,
            width: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Text(
            'Welcome',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter User Name", labelText: 'User Name'),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: 'Password'),
                ),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {},
                      style: const ButtonStyle(),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  ButtonStyle newMethod() => const ButtonStyle();
}
