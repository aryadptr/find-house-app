import 'package:find_house_app/models/city.dart';
import 'package:find_house_app/models/space.dart';
import 'package:find_house_app/models/tips.dart';
import 'package:find_house_app/theme.dart';
import 'package:find_house_app/widgets/city_card.dart';
import 'package:find_house_app/widgets/space_card.dart';
import 'package:find_house_app/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 24),
              child: ListView(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // NOTE: TITLE HEADER
                        Text(
                          'Explore Now',
                          style: blackTextStyle.copyWith(fontSize: 24),
                        ),
                        Text(
                          'Mencari kosan yang cozy',
                          style: greyTextStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )
                      ]),
                  SizedBox(height: 30),
                  Text(
                    // NOTE: POPULAR CITIES TITLE
                    'Popular Cities',
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // NOTE: CITIES CARD
                        CityCard(City(
                          id: 1,
                          name: 'Jakarta',
                          imageUrl: 'assets/images/city1.png',
                        )),
                        CityCard(City(
                          id: 2,
                          name: 'Bandung',
                          imageUrl: 'assets/images/city2.png',
                          isPopular: true,
                        )),
                        CityCard(City(
                          id: 3,
                          name: 'Surabaya',
                          imageUrl: 'assets/images/city3.png',
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Recommended Spaces',
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Column(
                    children: [
                      SpaceCard(Space(
                        id: 1,
                        name: 'Kutakareso Hotel',
                        imageUrl: 'assets/images/space1.png',
                        rating: 4.5,
                        price: 100,
                        address: 'Jakarta, Indonesia',
                      )),
                      SpaceCard(Space(
                        id: 2,
                        name: 'Indrayana Motel',
                        imageUrl: 'assets/images/space2.png',
                        rating: 4.7,
                        price: 86,
                        address: 'Bandung, Indonesia',
                      )),
                      SpaceCard(Space(
                        id: 1,
                        name: 'Agria Hotel',
                        imageUrl: 'assets/images/space3.png',
                        rating: 4.9,
                        price: 120,
                        address: 'Bogor, Indonesia',
                      )),
                    ],
                  ),
                  Text(
                    'Tips & Guidance',
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Column(children: [
                    TipsCard(Tips(
                      id: 1,
                      title: 'Tips and Tricks',
                      imageUrl: 'assets/images/tips1.png',
                      date: '12/12/2020',
                    )),
                    TipsCard(Tips(
                      id: 2,
                      title: 'City Guidelance',
                      imageUrl: 'assets/images/tips2.png',
                      date: '12/12/2020',
                    )),
                  ])
                ],
              ),
            )));
  }
}
