import 'package:find_house_app/pages/home.dart';
import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/splash_image.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/logo_app.png'),
                        ))),
                    SizedBox(height: 20),
                    Text('Find Cozy House \nto Stay and Happy',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                        )),
                    SizedBox(height: 10),
                    Text(
                      'Stop membuang banyak waktu \npada tempat yang tidak habitable',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: Center(
                            child: Text(
                              'Explore Now',
                              style: whiteTextStyle.copyWith(fontSize: 18),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
