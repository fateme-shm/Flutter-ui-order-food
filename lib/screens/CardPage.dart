import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  var _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              labelText: 'Search',
              prefixIcon: Icon(CupertinoIcons.search),
            ),
          ),
        ),
        drawer: HomeDrawer(),
        body: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset('assets/images/ic_profile.png',
                            width: 80, height: 80, fit: BoxFit.cover),
                      ),
                      Text(
                        'Summery of Order',
                        style: GoogleFonts.lato(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: SizedBox(
                    height: 170,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset('assets/images/ic_hambergur1.png',
                              width: 150, height: 150),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ' Mac Burger',
                                  style: GoogleFonts.lato(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(' Fresh and low calory',
                                    style: GoogleFonts.lato(
                                        fontSize: 16,
                                        color: Colors.grey.shade600)),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Icon(CupertinoIcons.money_dollar),
                                    Text(
                                      '79.00',
                                      style: GoogleFonts.lato(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(13),
                            child: Icon(
                              CupertinoIcons.delete,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: SizedBox(
                    height: 170,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset('assets/images/ic_dounat.png',
                              width: 150, height: 150),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ' P Donut',
                                  style: GoogleFonts.lato(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(' Fresh and Hot',
                                    style: GoogleFonts.lato(
                                        fontSize: 16,
                                        color: Colors.grey.shade600)),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Icon(CupertinoIcons.money_dollar),
                                    Text(
                                      '25.00',
                                      style: GoogleFonts.lato(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(13),
                            child: Icon(
                              CupertinoIcons.delete,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: SizedBox(
                    height: 170,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset('assets/images/ic_soda.png',
                              width: 150, height: 150),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ' Soft Drink',
                                  style: GoogleFonts.lato(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(' No suger and icy',
                                    style: GoogleFonts.lato(
                                        fontSize: 16,
                                        color: Colors.grey.shade600)),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Icon(CupertinoIcons.money_dollar),
                                    Text(
                                      '14.00',
                                      style: GoogleFonts.lato(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(13),
                            child: Icon(
                              CupertinoIcons.delete,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: SizedBox(
                    height: 170,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset('assets/images/ic_pizza2.png',
                              width: 150, height: 150),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ' Peperony Pizza',
                                  style: GoogleFonts.lato(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(' Hot and tasty',
                                    style: GoogleFonts.lato(
                                        fontSize: 16,
                                        color: Colors.grey.shade600)),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Icon(CupertinoIcons.money_dollar),
                                    Text(
                                      '149.00',
                                      style: GoogleFonts.lato(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(13),
                            child: Icon(
                              CupertinoIcons.delete,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Shpping Cart',
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.money_dollar, size: 27),
                              Text(
                                '267.00',
                                style: GoogleFonts.lato(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Text(
                                'Pay Now',
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 17,
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
