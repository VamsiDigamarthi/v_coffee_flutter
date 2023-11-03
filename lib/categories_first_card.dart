import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesFirstCard extends StatelessWidget {
  const CategoriesFirstCard(this.image, this.index, {super.key});

  final image;

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 3,
        vertical: 10,
      ),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              40,
            ),
          ),
          color: index == 0
              ? const Color.fromARGB(255, 238, 99, 70)
              : const Color.fromARGB(255, 236, 237, 239),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 24,
              // backgroundColor: Colors.white,
              // child: Image.network(
              //   image.imag,
              //   fit: BoxFit.cover,
              // ),
              backgroundImage: NetworkImage(image.imag),
            ),
            Text(
              image.coffeeName,
              style: GoogleFonts.josefinSans(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: index == 0 ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
