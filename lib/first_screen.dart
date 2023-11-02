import 'dart:ffi';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: SafeArea(
        top: true,
        child: Scaffold(
          backgroundColor: Colors.green[300],
          appBar: AppBar(
            // title: const Text("Profile"),
            centerTitle: true,
            backgroundColor: Colors.green[300],
            elevation: 0,
            actions: const [
              Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ],
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 1.0,
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Market Yours Growth Strategy",
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
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
