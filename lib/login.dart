// TODO Implement this library.
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopping_app/extra.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/signup.dart';


class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

bool isOpen = false;
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _loginpageState extends State<loginpage> {
  final globalkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20),
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
        key: globalkey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: emailController,
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
                  controller: passwordController,
                  validator: (password) {
                    if (password!.length < 6) {
                      return "Password must be more than 6 digits";
                    }
                    return null;
                  },
                  obscureText: isOpen,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isOpen = !isOpen;
                          });
                        },
                        child: isOpen
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
                        onPressed: () {
                          if (globalkey.currentState!.validate()) {
                            try {
                              FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                  email: emailController.text.trim(),
                                  password: passwordController.text.trim())
                                  .then(
                                      (value) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const WelcomePage()),
                                    );
                                  }
                              );
                            }catch(e){
                              {
                                {
                                  // ignore: avoid_print
                                  print(e);
                                }
                              }
                            }
                          }
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 24),
                ),
                TextButton(
                  child:  Text(
                    ">> Create an account",
                    style: TextStyle(fontSize: 15,color: Colors.teal[900]),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const signuppage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
