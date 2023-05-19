import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signuppage extends StatefulWidget {
  const signuppage({Key? key}) : super(key: key);

  @override
  State<signuppage> createState() => _signuppageState();
}

bool isOkay = false;
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _signuppageState extends State<signuppage> {
  final global_key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(20),
        child: AppBar(
          title: const Text(
            "Shopping App",
            style: TextStyle(fontSize: 17),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.red[900],
        ),
      ),
      body: Form(
        key: global_key,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: email,
                  validator: (email) {
                    if (email!.isEmpty) {
                      return "Please enter your email";
                    } else if (email.contains('@') && email.endsWith(".com")) {
                      return null;
                    }
                    return "Enter a valid email";
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.red[50],
                    hintText: 'E-mail',
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: password,
                  validator: (password) {
                    if (password!.length < 6) {
                      return "Password must be more than 6 digits";
                    }
                    return null;
                  },
                  obscureText: isOkay,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isOkay = !isOkay;
                          });
                        },
                        child: isOkay
                            ? const Icon(Icons.visibility_off_outlined)
                            : const Icon(Icons.visibility)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.red[50],
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[900], elevation: 15),
                        child: const Text(
                          "Signup",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (global_key.currentState!.validate()) {
                            try {
                              FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                  email: email.text.trim(),
                                  password: password.text.trim())
                                  .then(
                                      (value) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const loginpage()),
                                    );
                                  }
                              );
                            }catch(e){
                              if (kDebugMode) {
                                print(e);
                              }
                            }

                        }},
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 24),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const loginpage()),
                    );
                  },
                  child:  Text(
                    '>> Go to Login Page',
                    style: TextStyle(color: Colors.teal[900]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
