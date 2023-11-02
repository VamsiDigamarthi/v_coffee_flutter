import 'package:first/registor_widget.dart';
import 'package:first/signup_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool showSignUpOrRegistor = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(195, 252, 252, 252),
        child: Stack(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 25, 52, 99),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: const Center(
                child: Text(
                  "Lets get your signed In!",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 130,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height - 150,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 60,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                          color: Color.fromARGB(255, 236, 237, 239),
                        ),
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    showSignUpOrRegistor = true;
                                  });
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 60,
                                    vertical: 17,
                                  ),
                                  backgroundColor: showSignUpOrRegistor
                                      ? const Color.fromARGB(255, 234, 84, 59)
                                      : Colors.transparent,
                                ),
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: showSignUpOrRegistor
                                        ? Colors.white
                                        : const Color.fromARGB(255, 2, 43, 77),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    showSignUpOrRegistor = false;
                                  });
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 55,
                                    vertical: 17,
                                  ),
                                  backgroundColor: !showSignUpOrRegistor
                                      ? const Color.fromARGB(255, 234, 84, 59)
                                      : Colors.transparent,
                                ),
                                child: Text(
                                  "Registor",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: !showSignUpOrRegistor
                                        ? Colors.white
                                        : const Color.fromARGB(255, 2, 43, 77),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    showSignUpOrRegistor
                        ? const SignUp()
                        : const RegisterWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





// child: Padding(
//                 padding: const EdgeInsets.all(
//                   20,
//                 ),
//                 child: Column(
//                   children: [
//                     Container(
//                       // width: double.infinity,
//                       width: MediaQuery.of(context).size.width - 40,
//                       decoration: const BoxDecoration(
//                         color: Color.fromARGB(171, 158, 157, 157),
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(
//                             27,
//                           ),
//                         ),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           TextButton(
//                             onPressed: () {},
//                             style: TextButton.styleFrom(
//                               backgroundColor: Colors.red,
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 65,
//                                 vertical: 16,
//                               ),
//                             ),
//                             child: const Text(
//                               "Login",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {},
//                             style: TextButton.styleFrom(
//                               // backgroundColor: Colors.red,
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 65,
//                                 vertical: 16,
//                               ),
//                             ),
//                             child: const Text(
//                               "Sign Up",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const TextField(
//                       decoration: InputDecoration(
//                         hintText: "Enter your name",
//                       ),
//                     )
//                   ],
//                 ),
//               ),
