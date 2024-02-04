import 'package:flutter/material.dart';
import 'package:pizza_app/policy.dart';
import 'package:pizza_app/terms_and_service.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<SignUpPage> {
  bool? isChecked = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 40, left: 40, top: 70),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
                const SizedBox(width: 50),
                const Center(
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Fill the details and Create',
            style: TextStyle(
                color: Color(0xff867878),
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          const Text('New Account',
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
            padding: EdgeInsets.only(right: 205),
            child: Text('E-mail Address',
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
                    hintText: 'Enter email address',
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
                  obscureText: _obscureText,
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
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(
                        _obscureText
                            ? Icons.remove_red_eye_outlined
                            : Icons.visibility_off_outlined,
                        // ignore: prefer_const_constructors
                        color: Color(0xff827777),
                      ),
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
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      activeColor: const Color(0xffef1c26),
                      value: isChecked,
                      onChanged: (newBool) {
                        setState(() {
                          isChecked = newBool;
                        });
                      }),
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "I agree to the",
                      style: TextStyle(
                          color: Color(0xff867878),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => const TermsandService()));
                      },
                      child: const Text(
                        'Terms and Service',
                        style: TextStyle(
                            color: Color(0xffef1c26),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 80,
            ),
            child: Row(
              children: [
                const Text(
                  "and",
                  style: TextStyle(
                      color: Color(0xff867878),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrivacyPolicy()));
                  },
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                        color: Color(0xffef1c26),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
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
                'Sign up',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )),
        ],
      ),
    );
  }
}
