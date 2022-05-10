import 'package:find_house_app/models/space.dart';
import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(children: [
                Image.asset(
                  space.imageUrl ?? 'assets/images/space1.png',
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(10))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icon_star.png',
                            width: 22,
                            height: 22,
                          ),
                          Text(
                            space.rating.toString() + ' / 5' ?? '',
                            style: whiteTextStyle.copyWith(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ),
          SizedBox(width: 20),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  space.name ?? '',
                  style: blackTextStyle.copyWith(fontSize: 18),
                ),
                Text.rich(TextSpan(
                    text: '\$' + space.price.toString() ?? '',
                    style: purpleTextStyle.copyWith(fontSize: 16),
                    children: [
                      TextSpan(
                          text: '/ month',
                          style: greyTextStyle.copyWith(fontSize: 16))
                    ]))
              ],
            ),
            SizedBox(height: 16),
            Text(
              space.address ?? '',
              style: greyTextStyle,
            )
          ])
        ],
      ),
    );
  }
}
