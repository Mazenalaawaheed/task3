import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 0, 204),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Image.asset(
              'lib/assets/alien.png',
              height: 180,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                ),
                color: Color.fromARGB(255, 243, 243, 243),
              ),
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 120, 120, 120),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        label: Text(
                          'Username',
                          style: TextStyle(
                              color: Color.fromARGB(255, 120, 120, 120)),
                        ),
                        prefixIcon: Icon(Icons.person,
                            color: Color.fromARGB(255, 120, 120, 120)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: const TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 120, 120, 120),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 120, 120, 120),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          label: Text(
                            'Password',
                            style: TextStyle(
                                color: Color.fromARGB(255, 120, 120, 120)),
                          ),
                          prefixIcon: Icon(Icons.lock,
                              color: Color.fromARGB(255, 120, 120, 120)),
                          suffixIcon: Icon(Icons.visibility_off,
                              color: Color.fromARGB(255, 120, 120, 120)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'New to the app?  ',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          ' Register',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 205,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(15),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'lib/assets/fingerprint.png',
                      width: 55,
                    ),
                    const Text(
                      'Use Touch ID',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.green,
                          value: true,
                          onChanged: (bool? value) {},
                        ),
                        const Text('Remember me'),
                        const Spacer(),
                        const Text(
                          'Forget Password?',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
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
    );
  }
}
