import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:heroes_app/model/custom_card.dart';

import 'view_image.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider.builder(
          itemCount: cardList.length,
          itemBuilder: (context, itemIndex, _) {
            return Column(
              children: [
                Text(
                  cardList[itemIndex].cardHeader.toString(),
                  style: TextStyle(
                    fontSize: 38,
                    color: cardList[itemIndex].cardColor,
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 7,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ViewImage(
                            title: cardList[itemIndex].cardHeader,
                            image: cardList[itemIndex].cardImg,
                            color: cardList[itemIndex].cardColor,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 8.0,
                      padding: const EdgeInsets.all(20.0),
                      primary: cardList[itemIndex].cardColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Hero(
                      tag: cardList[itemIndex].cardImg!,
                      child: Image.asset(
                        cardList[itemIndex].cardImg!,
                        width: 250,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enlargeCenterPage: true,
            height: MediaQuery.of(context).size.height * 0.7,
          ),
        ),
      ),
    );
  }
}
