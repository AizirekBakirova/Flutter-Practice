import 'package:flutter/material.dart';

class TermsandService extends StatelessWidget {
  const TermsandService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
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
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Terms and Service',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
