import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EachCardItem extends StatelessWidget {
  const EachCardItem({super.key, required this.coffee});
  final coffee;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        10,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width - 30,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 0.0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 120,
              width: 130,
              child: Image.network(
                coffee.image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Iced Coffee",
                    style: GoogleFonts.josefinSans(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Iced Coffee",
                    style: GoogleFonts.josefinSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "\$ 4.00",
                    style: GoogleFonts.josefinSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
                color: Color.fromARGB(255, 230, 81, 59),
              ),
              height: 122,
              width: 50,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.plus,
                      color: Colors.white,
                    ),
                    iconSize: 20,
                  ),
                  Text(
                    "1",
                    style: GoogleFonts.josefinSans(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.minus,
                      color: Colors.white,
                    ),
                    iconSize: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
