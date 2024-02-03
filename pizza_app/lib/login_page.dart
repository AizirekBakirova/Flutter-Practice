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
          Padding(
            padding: const EdgeInsets.only(right: 50, left: 50, top: 70),
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
          SizedBox(height: 5),
          Text(
            'Enter registered name',
            style: TextStyle(
                color: Color(0xff867878),
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          Text('to Sing in',
              style: TextStyle(
                  color: Color(0xff867878),
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 280),
            child: Text('Name',
                style: TextStyle(
                    color: Color(0xff867878),
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 320,
              child: Material(
                elevation: 10,
                shadowColor: Color(0xffef1c26),
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
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text('Password',
                style: TextStyle(
                    color: Color(0xff867878),
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 320,
              child: Material(
                elevation: 10,
                shadowColor: Color(0xffef1c26),
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
                    // prefixIcon: Icon(Icons.remove_red_eye_outlined),
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
          SizedBox(height: 70),
          Text(
            'Or Sign up with',
            style: TextStyle(
                color: Color(0xff867878),
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/google.png',
                scale: 25,
              ),
              SizedBox(
                width: 40,
              ),
              Image.asset(
                'assets/facebook.png',
                scale: 12,
              ),
            ],
          ),
          SizedBox(height: 100),
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
                  shadowColor: Color(0xffef1c26),
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
          SizedBox(height: 30),
          Row(
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
