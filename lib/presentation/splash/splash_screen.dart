import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel2mar/core/assets_helper.dart';
import 'package:travel2mar/presentation/dashboard/dashboard_screen.dart';
import 'package:travel2mar/utils/device_utls.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const DashboardScreen()));
    });
    return SafeArea(
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 120,
                child: Image.asset(
                  Assets.RightSideBike,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
              verticalSpacer(60),
              const CircularProgressIndicator(
                color: Colors.blue,
                strokeWidth: 2,
                semanticsLabel: "Loading",
              ),
              verticalSpacer(10),
            ],
          ),
        ),
      ),
    );
  }
}
