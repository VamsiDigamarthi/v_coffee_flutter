import 'package:first/main_screen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passwordText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              borderSide: BorderSide.none,
            ),
            hintText: "User name",
            filled: true,
            fillColor: Color.fromARGB(255, 235, 239, 242),
            contentPadding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 25,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          decoration: InputDecoration(
            isDense: true,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  40,
                ),
              ),
              borderSide: BorderSide.none,
            ),
            hintText: "Password",
            filled: true,
            fillColor: const Color.fromARGB(255, 235, 239, 242),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 25,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  passwordText = !passwordText;
                });
              },
              icon: Icon(
                passwordText ? Icons.remove_red_eye : Icons.visibility_off,
                size: 25,
              ),
            ),
          ),
          obscureText: passwordText,
        ),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Forget password",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MainScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 48, 57, 66),
            ),
            child: const Text(
              "Login",
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "--------------- Or ---------------",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.facebook,
              size: 50,
              color: Colors.blueAccent,
            ),
            Icon(
              Icons.gamepad_outlined,
              size: 50,
              color: Colors.redAccent,
            ),
            Icon(
              Icons.apple,
              size: 50,
            ),
          ],
        ),
        const SizedBox(
          height: 45,
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            "you have no account please registor",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
