import 'package:flutter/material.dart';
import 'categoryscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Image.asset(
                'lib/assets/alien.png',
                height: 100,
                width: 150,
              ),
            ),
            const Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * 2 / 3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormField(
                        validator: (value) {
                          RegExp regex = RegExp(r'^[A-Z][a-z0-9]+$');
                          if (value!.isEmpty) {
                            return "enter your username please";
                          } else if (value.length < 4) {
                            return "Username must be 4 character atleast";
                          } else if (!regex.hasMatch(value)) {
                            return "First Character must be Uppercase";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          label: Text('Username'),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a password';
                            } else if (!RegExp(r'^[A-Za-z0-4_.@#$%^&*]{4,}$')
                                    .hasMatch(value) &&
                                value.length < 4) {
                              return 'password must be 4 characters at least and must\ncontain at least one uppercase letter , one lowercase\nletter, one number, and one special character';
                            } else if (!RegExp(r'^[A-Za-z0-4_.@#$%^&*]{4,}$')
                                    .hasMatch(value) &&
                                value.length > 4) {
                              return "password must contain atleast one uppercase letter\no lowercase letter, one number, and one special character";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 0),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            label: Text('Password'),
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility_off),
                          ),
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'New to The app?  ',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            'Register Here',
                            style: TextStyle(color: Color.fromARGB(255, 0, 68, 255)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 10,
                            ),
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const CategoryScreen(),
                                  ),
                                );
                              }
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        'lib/assets/fingerprint.png',
                        width: 50,
                      ),
                      const Text(
                        'Use FingerPrint scanner',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.green,
                            value: true,
                            onChanged: (bool? value) {},
                          ),
                          const Text('Remember Me?'),
                          const Spacer(),
                          const Text(
                            'Forgot Your Password?',
                            style: TextStyle(color: Color.fromARGB(255, 0, 17, 255)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
