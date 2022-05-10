import 'package:find_house_app/models/city.dart';
import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;
  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
            width: 120,
            height: 150,
            color: Color(0xFFF6F7F8),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      city.imageUrl ?? 'assets/images/city1.png',
                      width: 120,
                      height: 102,
                      fit: BoxFit.cover,
                    ),
                    city.isPopular == true
                        ? Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 50,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: purpleColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10))),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
                SizedBox(height: 10),
                Text(city.name ?? 'Jakarta',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                    )),
              ],
            )),
      ),
    );
  }
}
