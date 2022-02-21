import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_resturant_design/main.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int countOrder = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          CupertinoIcons.chevron_back,
                          size: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/ic_profile.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/ic_pizza1.png',
                  width: 380,
                  height: 380,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Italian',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Chickpea Pizza',
                            style: GoogleFonts.lato(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  countOrder = countOrder - 1;
                                  setState(() {
                                    countOrder;
                                  });
                                },
                                child: const Card(
                                  color: Colors.black,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      CupertinoIcons.minus,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  countOrder.toString(),
                                  style: const TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  countOrder = countOrder + 1;
                                  setState(() {
                                    countOrder;
                                  });
                                },
                                child: const Card(
                                  color: Colors.black,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      CupertinoIcons.add,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                          'Pizza has been a staple of Italian heritage and culture\ndating back to the 16th century. From there, it permeated the world, interpreted and served in a variety of ways and enjoyed by nearly everyone. ',
                          style: GoogleFonts.lato()),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Delivery time',
                            style: GoogleFonts.lato(),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.time, size: 20),
                              Text(
                                ' 30 min',
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '  Total Price',
                                style: GoogleFonts.lato(fontSize: 18),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    CupertinoIcons.money_dollar,
                                    size: 30,
                                  ),
                                  Text(
                                    '28.00',
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Card(
                                  color: Colors.grey.shade300,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(
                                      CupertinoIcons.heart,
                                      size: 20,
                                    ),
                                  )),
                              const SizedBox(width: 20),
                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.black)),
                                onPressed: () {},
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Add to cart',
                                        style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 10),
                                      const Icon(CupertinoIcons.shopping_cart,
                                          color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
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
