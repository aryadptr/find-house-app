import 'package:find_house_app/models/tips.dart';
import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(children: [
            Image.asset(
              tips.imageUrl ?? 'assets/images/tips1.png',
              width: 80,
            ),
          ]),
        ),
        SizedBox(width: 20),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            tips.title ?? 'Tips 1',
            style: blackTextStyle.copyWith(fontSize: 16),
          ),
          Text(
            tips.date ?? '12/12/2020',
            style: greyTextStyle,
          ),
        ]),
        Spacer(),
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Image.asset('assets/images/btn_arrow_right.png', width: 30)
        ]),
      ]),
    );
  }
}
