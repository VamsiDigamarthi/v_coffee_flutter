import 'package:first/cafe_store.dart';
import 'package:first/card_details.dart';
import 'package:first/data/choose_cafe.dart';
import 'package:first/data/money_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseCafe extends StatelessWidget {
  const ChooseCafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color.fromARGB(234, 255, 255, 255),
          child: Stack(
            children: [
              Container(
                height: 150,
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
                  height: 140,
                  child: Image.asset(
                    "assets/images/istockphoto-1334058768-1024x1024-removebg-preview.png",
                    fit: BoxFit.contain,
                    opacity: const AlwaysStoppedAnimation(.4),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                            size: 26,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Choose Your Cafe",
                          style: GoogleFonts.josefinSans(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 160,
                child: Padding(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 30,
                    height: MediaQuery.of(context).size.height - 180,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Frequently Choosen',
                            style: GoogleFonts.josefinSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Radio(
                            value: "BestTutorSite.javatpoint",
                            groupValue: "site",
                            onChanged: (value) {},
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Search by City',
                            style: GoogleFonts.josefinSans(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 68, 68, 70),
                            ),
                          ),
                          trailing: Radio(
                            value: "Search by City",
                            groupValue: "site",
                            onChanged: (value) {},
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
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
                              // suffixIcon: CircleAvatar(
                              //   backgroundColor: Color.fromARGB(255, 234, 84, 59),
                              //   radius: 28,
                              //   child: Icon(
                              //     CupertinoIcons.search,
                              //     color: Colors.white,
                              //   ),
                              // ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          title: Text(
                            'Caffè macchiato,',
                            style: GoogleFonts.josefinSans(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            "A cappuccino is an espresso-based coffee",
                          ),
                          trailing: Radio(
                            value: "Coffee ficup change",
                            groupValue: "site",
                            onChanged: (value) {},
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "List",
                                style: GoogleFonts.josefinSans(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 225, 85, 50),
                                ),
                              ),
                              Text(
                                "Map",
                                style: GoogleFonts.josefinSans(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 300,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              color: Color.fromARGB(255, 233, 233, 233),
                            ),
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: chooseCafes.length,
                              itemBuilder: (context, index) => CafeStore(
                                image: chooseCafes[index],
                                index: index,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 25, 52, 99),
                                  foregroundColor: Colors.white,
                                  fixedSize: const Size(150, 55),
                                ),
                                child: Text(
                                  "Save",
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor:
                                        const Color.fromARGB(255, 25, 52, 99),
                                    fixedSize: const Size(150, 55),
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 25, 52, 99),
                                        width: 2)),
                                child: Text(
                                  "Cancel",
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
