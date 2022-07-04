import 'package:flutter/material.dart';
import 'package:travel2mar/presentation/home/widgets/amount_viewer.dart';
import 'package:travel2mar/presentation/home/widgets/travel_map_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AmountViewer(),
          TravelMapWidget(),
        ],
      ),
    );
  }
}
