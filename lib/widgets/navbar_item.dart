import 'package:find_house_app/theme.dart';
import 'package:flutter/cupertino.dart';

class BottomNavbarItem extends StatelessWidget {
  final String? imageUrl;
  final bool? isActive;

  BottomNavbarItem({this.imageUrl, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          this.imageUrl ?? 'assets/images/icon_home_active.png',
          width: 30,
        ),
        Spacer(),
        isActive == true
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(100)),
              )
            : Container(),
      ],
    );
  }
}
