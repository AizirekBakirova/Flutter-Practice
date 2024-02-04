import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 50, left: 50, top: 70),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.black),
                SizedBox(width: 20),
                Text(
                  "Let's Sign you in",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Enter registered name',
            style: TextStyle(
                color: Color(0xff867878),
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          const Text('to Sing in',
              style: TextStyle(
                  color: Color(0xff867878),
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 275),
            child: Text('Name',
                style: TextStyle(
                    color: Color(0xff867878),
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 320,
              child: Material(
                elevation: 10,
                shadowColor: const Color(0xffef1c26),
                child: TextFormField(
                  obscureText: true,
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Password cannot be empty';
                  //   } else if (value != password) {
                  //     return 'Wrong password';
                  //   }
                  //   return null;
                  // },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xfffefefe),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        color: Color(0xffef1c26),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(
                            color: Color(0xffef1c26), width: 0)),
                    hintText: 'Enter name',
                    hintStyle: const TextStyle(
                        color: Color(0xff827777),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 245),
            child: Text('Password',
                style: TextStyle(
                    color: Color(0xff867878),
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 320,
              child: Material(
                elevation: 10,
                shadowColor: const Color(0xffef1c26),
                child: TextFormField(
                  obscureText: true,
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Password cannot be empty';
                  //   } else if (value != password) {
                  //     return 'Wrong password';
                  //   }
                  //   return null;
                  // },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xfffefefe),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        color: Color(0xffef1c26),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(
                            color: Color(0xffef1c26), width: 0)),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Color(0xff827777),
                    ),
                    hintText: 'Enter password',
                    hintStyle: const TextStyle(
                        color: Color(0xff827777),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 70),
          const Text(
            'Or Sign up with',
            style: TextStyle(
                color: Color(0xff867878),
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/google.png',
                scale: 25,
              ),
              const SizedBox(
                width: 40,
              ),
              Image.asset(
                'assets/facebook.png',
                scale: 12,
              ),
            ],
          ),
          const SizedBox(height: 100),
          ElevatedButton(
              onPressed: () {
                // if (formKey.currentState!.validate()) {
                //   formKey.currentState!.save();
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const HomePage()));
                // }
              },
              style: ElevatedButton.styleFrom(
                  shadowColor: const Color(0xffef1c26),
                  elevation: 10,
                  backgroundColor: const Color(0xffEF1C26),
                  minimumSize: const Size(
                    320,
                    50,
                  ),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(3))),
              child: const Text(
                'Sign in',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )),
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                    color: Color(0xff867878),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Register',
                style: TextStyle(
                    color: Color(0xffef1c26),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ],
      ),
    );
  }
}
