import 'package:allnetworkspack/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  MoveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                height: 280,
                width: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Text(
                "Welcome $name ",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(children: [
                    TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter User Name",
                            labelText: 'User Name'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter User Name";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: 'Password'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Password";
                        } else if (value.length < 6) {
                          return "password length should be atleast 6";
                        }

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Material(
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 10),
                      color: Colors.orange,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: () => MoveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changeButton ? 50 : 180,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.black,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                        ),
                      ),
                    )
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
