import 'package:first/card_details.dart';
import 'package:first/data/money_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

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
                        "Payment Methods",
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
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: MediaQuery.of(context).size.height - 180,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 110,
                            height: 180,
                            padding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 10),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 225, 85, 50),
                              borderRadius: BorderRadius.all(
                                Radius.circular(80),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 40,
                                  child: Icon(
                                    CupertinoIcons.creditcard,
                                    size: 40,
                                    color: Color.fromARGB(255, 225, 85, 50),
                                  ),
                                ),
                                Text(
                                  "Card",
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 180,
                            padding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 10),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 232, 237, 241),
                              borderRadius: BorderRadius.all(
                                Radius.circular(80),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 40,
                                  child: Icon(
                                    Icons.diamond_outlined,
                                    size: 40,
                                  ),
                                ),
                                Text(
                                  "Cash",
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 180,
                            padding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 10),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 232, 237, 241),
                              borderRadius: BorderRadius.all(
                                Radius.circular(80),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 40,
                                  child: Icon(
                                    Icons.paypal_outlined,
                                    size: 40,
                                  ),
                                ),
                                Text(
                                  "Pay Pal",
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: moneyCard.length,
                          itemBuilder: (context, index) => CardDetails(
                            image: moneyCard[index],
                            index: index,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(360, 60),
                          backgroundColor:
                              const Color.fromARGB(255, 232, 237, 241),
                          alignment: Alignment.center,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.plus,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(
                          "Add New Card",
                          style: GoogleFonts.josefinSans(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(360, 60),
                          backgroundColor:
                              const Color.fromARGB(255, 25, 52, 99),
                          alignment: Alignment.center,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Go to Next",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
