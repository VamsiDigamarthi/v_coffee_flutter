import 'package:first/categories_first_card.dart';
import 'package:first/data/categories_coffee.dart';
import 'package:first/data/coffee_data.dart';
import 'package:first/grid_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          const Positioned(
            top: 80,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                "Menu Items",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
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
                  const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) =>
                          CategoriesFirstCard(categories[index], index),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 400,
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        // childAspectRatio: (itemWidth / itemHeight),
                        childAspectRatio: (1 / 1.4),
                      ),
                      children: [
                        GridPage(
                          image: data[0],
                        ),
                        GridPage(
                          image: data[1],
                        ),
                        GridPage(
                          image: data[2],
                        ),
                        GridPage(
                          image: data[3],
                        ),
                        GridPage(
                          image: data[4],
                        ),
                        GridPage(
                          image: data[5],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
