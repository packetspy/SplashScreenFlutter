import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_flutter/src/pages/home/home_page.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Container();
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 3,
          backgroundColor: Colors.white,
          navigateAfterSeconds: HomePage(),
          loaderColor: Colors.transparent,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logo_mgb_preto.png"),
                        fit: BoxFit.contain)),
              ),
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                child: FlareActor(
                  "assets/animations/loading_water.flr",
                  animation: "start",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
