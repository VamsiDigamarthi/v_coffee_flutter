import 'package:first/data/coffee_data.dart';
import 'package:first/frequntli_widget.dart';
import 'package:first/new_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final newSuffledData = List.from(data);

    newSuffledData.shuffle();
    return Container(
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
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 160,
              child: Image.asset(
                "assets/images/istockphoto-1334058768-1024x1024-removebg-preview.png",
                fit: BoxFit.contain,
                opacity: const AlwaysStoppedAnimation(.4),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 28,
            ),
            child: SizedBox(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Canvosh",
                      style: GoogleFonts.josefinSans(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Have a nice day Vamsi",
                        style: GoogleFonts.josefinSans(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        CupertinoIcons.bell_fill,
                        color: Colors.white,
                        size: 31,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Good Coffee and Good Health",
                    style: GoogleFonts.josefinSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 130,
            child: Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height - 150,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      hintText: "Search",
                      filled: true,
                      fillColor: Color.fromARGB(255, 235, 239, 242),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 25,
                      ),
                      suffixIcon: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 234, 84, 59),
                        radius: 28,
                        child: Icon(
                          CupertinoIcons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "New Items",
                    style: GoogleFonts.josefinSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 260,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) => NewItem(
                        image: data[index],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Frequently Orders",
                    style: GoogleFonts.josefinSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: newSuffledData.length,
                      itemBuilder: (context, index) => FrequentlyWidget(
                        image: newSuffledData[index],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // GridView(
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 2,
                  //     mainAxisSpacing: 10,
                  //   ),
                  //   children: [
                  //     NewItem(image: image)
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
