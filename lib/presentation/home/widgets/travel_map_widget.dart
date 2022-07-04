import 'package:flutter/material.dart';
import 'package:travel2mar/core/assets_helper.dart';
import 'package:travel2mar/presentation/home/widgets/bike_travel.dart';
import 'package:travel2mar/presentation/widgets/box_icon_widget.dart';
import 'package:travel2mar/utils/device_utls.dart';

class TravelMapWidget extends StatelessWidget {
  const TravelMapWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 14.0, bottom: 14.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1,
              )
            ],
          ),
          child: Column(
            children: [
              verticalSpacer(30),
              Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: const Offset(4, 4),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 15,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Travel Map',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              verticalSpacer(20),
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(),
                child: Row(
                  children: [
                    horizontalSpacer(10),
                    BoxIconWidget(
                      icon: Assets.Home,
                      label: "Home",
                    ),
                    horizontalSpacer(10),
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            verticalSpacer(50),
                            Stack(
                              children: const [
                                BikeTravelWidget(),
                                Divider(
                                  height: 93,
                                  thickness: 3,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            verticalSpacer(6),
                          ],
                        ),
                      ),
                    ),
                    horizontalSpacer(10),
                    BoxIconWidget(
                      icon: Assets.College,
                      label: "College",
                    ),
                    horizontalSpacer(10),
                  ],
                ),
              ),
              ElevatedButton(
                child: const Text(
                  'Go to Home',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
