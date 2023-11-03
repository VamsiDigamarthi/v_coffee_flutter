import 'package:first/data/coffee_data.dart';
import 'package:first/each_card_item.dart';
import 'package:first/payment_widget.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    final newSuffledData = List.from(data);

    newSuffledData.shuffle();
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
            Positioned(
              top: 80,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "My Card",
                  style: GoogleFonts.josefinSans(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 200,
              child: Padding(
                padding: const EdgeInsets.all(
                  15,
                ),

                // child: Container(
                //   height: MediaQuery.of(context).size.height - 400,
                //   child: SizedBox(
                //     height: 300,
                //     child: ListView.builder(
                //       scrollDirection: Axis.vertical,
                //       itemCount: data.length,
                //       itemBuilder: (context, index) => EachCardItem(
                //         coffee: data[index],
                //       ),
                //     ),
                //   ),
                // ),

                child: Expanded(
                  child: Column(
                    children: [
                      Column(
                        children: newSuffledData
                            .sublist(4)
                            .map((e) => EachCardItem(coffee: e))
                            .toList(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "All Coffee",
                              style: GoogleFonts.josefinSans(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "\$ 50.00",
                              style: GoogleFonts.josefinSans(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Charges",
                              style: GoogleFonts.josefinSans(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "\$ 10.00",
                              style: GoogleFonts.josefinSans(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Total",
                              style: GoogleFonts.josefinSans(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "\$ 60.00",
                              style: GoogleFonts.josefinSans(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 225, 85, 50),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 49,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const PaymentWidget(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(360, 60),
                          backgroundColor:
                              const Color.fromARGB(255, 25, 52, 99),
                        ),
                        child: Text(
                          "Go to Pay",
                          style: GoogleFonts.josefinSans(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
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
