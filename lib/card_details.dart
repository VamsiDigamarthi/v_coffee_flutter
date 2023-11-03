import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key, this.image, required this.index});
  final image;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 100,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 0.0),
            )
          ],
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 80,
              width: 100,
              child: Image.network(
                image.image,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  image.name,
                  style: GoogleFonts.josefinSans(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  image.number,
                  style: GoogleFonts.josefinSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: index == 0
                  ? const Color.fromARGB(255, 225, 85, 50)
                  : const Color.fromARGB(255, 232, 237, 241),
              radius: 13,
            ),
          ],
        ),
      ),
    );
  }
}
