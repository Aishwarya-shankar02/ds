import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  List<String> cards = [
    'Card 1',
    'Card 2',
    'Card 3',
    // Add more cards as needed
  ];
  int currentIndex = 0;
  void onCardSwiped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Phone"),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          elevation: 0.00,
          backgroundColor: Colors.orange[400],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomCard(
                  image: "assets/images/61BGE6iu4AL._SX522_.jpg",
                  titleIcon: "Apple iPhone 11 (64GB) \n- White ] \n  2019"),
              CustomCard(
                  image:
                      "assets/images/31DaY6l18YL._SY445_SX342_QL70_FMwebp_.webp",
                  titleIcon:
                      "Apple iPhone 14 Pro Max \n  (128 GB)  - Gold  2022"),
              CustomCard(
                  image: "assets/images/61BGE6iu4AL._SX522_.jpg",
                  titleIcon: "Apple iPhone 14  Plus \n (128 GB) - Blue"),
              CustomCard(
                  image: "assets/images/61BGE6iu4AL._SX522_.jpg",
                  titleIcon: "Apple iPhone 14 \n Plus (128 GB) - Blue"),
            ],
          ),
        ));
  }
}

class CustomCard extends StatefulWidget {
  final String image;
  final String titleIcon;
  CustomCard({required this.image, required this.titleIcon});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Card(
                      //card

                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            SizedBox(
                                height: 250,
                                width: 150,
                                child: Image.asset(widget.image)),
                            SizedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Padding(
                                      padding: EdgeInsets.only(left: 60),
                                      child:
                                          Icon(Icons.favorite_border_outlined)),
                                  Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: Text(
                                      widget.titleIcon,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
