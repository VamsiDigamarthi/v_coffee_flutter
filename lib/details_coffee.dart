import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsCoffee extends StatelessWidget {
  const DetailsCoffee({super.key});

  void _showBottomSheet(context) {
    String milk = "v";
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.95,
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Milk",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RadioListTile(
                value: "Full-dot Milk",
                title: const Text("Full-dot Milk"),
                groupValue: milk,
                onChanged: (value) {
                  milk = value.toString();
                },
              ),
              RadioListTile(
                value: "Lovely free Milk",
                title: const Text("Lovely free Milk"),
                groupValue: milk,
                onChanged: (value) {
                  milk = value.toString();
                },
              ),
              RadioListTile(
                value: "Soy Milk",
                title: const Text("Soy Milk"),
                groupValue: milk,
                onChanged: (value) {
                  milk = value.toString();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Added Sugar",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RadioListTile(
                value: "Small",
                title: const Text("Small"),
                groupValue: milk,
                onChanged: (value) {
                  milk = value.toString();
                },
              ),
              RadioListTile(
                value: "Medium",
                title: const Text("Medium"),
                groupValue: milk,
                onChanged: (value) {
                  milk = value.toString();
                },
              ),
              RadioListTile(
                value: "Large",
                title: const Text("Large"),
                groupValue: milk,
                onChanged: (value) {
                  milk = value.toString();
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 50),
                  backgroundColor: const Color.fromARGB(255, 25, 52, 99),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text(
                  "Save",
                ),
              ),
            ],
          ),
        );
      },
    );
  }

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
              height: 280,
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
                height: 260,
                child: Image.asset(
                  "assets/images/istockphoto-1334058768-1024x1024-removebg-preview.png",
                  fit: BoxFit.contain,
                  opacity: const AlwaysStoppedAnimation(.4),
                ),
              ),
            ),
            Positioned(
              top: 30,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color.fromARGB(255, 230, 81, 59),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: 130,
              child: SizedBox(
                height: 300,
                child: Image.asset(
                  "assets/images/cof.png",
                ),
              ),
            ),
            Positioned(
              top: 220,
              left: 40,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      7,
                    ),
                  ),
                  color: Color.fromARGB(255, 230, 81, 59),
                ),
                padding: const EdgeInsets.all(4),
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.plus,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.minus,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Cappuccino",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "A Cappuccino is an espresso-based coffee drink that is traditionally prepared with steamed milk foam. Variations of the drink involve the use of cream instead of milk,",
                      style: TextStyle(
                        color: Color.fromARGB(255, 86, 87, 88),
                        fontSize: 20,
                      ),
                      softWrap: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            "Size",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "350 ml",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 120,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                30,
                              ),
                            ),
                            color: Color.fromARGB(255, 230, 81, 59),
                          ),
                          child: const Text(
                            "Small",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 120,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                30,
                              ),
                            ),
                            color: Color.fromARGB(255, 235, 239, 242),
                          ),
                          child: const Text(
                            "Medium",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 120,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                30,
                              ),
                            ),
                            color: Color.fromARGB(255, 235, 239, 242),
                          ),
                          child: const Text(
                            "Large",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Custommize Your Coffee",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 73, 73, 73),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "\$ 4.00",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 10,
                            ),
                            backgroundColor:
                                const Color.fromARGB(255, 38, 45, 61),
                            foregroundColor: Colors.white,
                            fixedSize: const Size(
                              220,
                              60,
                            ),
                          ),
                          onPressed: () {
                            _showBottomSheet(context);
                          },
                          child: const Text(
                            "Add to cart",
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
