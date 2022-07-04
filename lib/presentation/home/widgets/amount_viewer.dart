import 'package:flutter/material.dart';

class AmountViewer extends StatelessWidget {
  const AmountViewer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
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
                Expanded(
                  child: Row(
                    children: const [
                      AmountViewerBoxWidget(
                        right: 10,
                        bottom: 10,
                        title: 'Current Balance',
                        amount: 100.51,
                      ),
                      AmountViewerBoxWidget(
                        left: 10,
                        bottom: 10,
                        title: "Paid",
                        amount: 1000,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: const [
                      AmountViewerBoxWidget(
                        top: 10,
                        right: 10,
                        title: 'Unpaid',
                        amount: 500,
                      ),
                      AmountViewerBoxWidget(
                        title: "Traveling Cost\n\t\t\t\t\t(per day)",
                        amount: 25,
                        top: 10,
                        left: 10,
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class AmountViewerBoxWidget extends StatelessWidget {
  final double left;
  final double right;
  final double top;
  final double bottom;
  final String title;
  final double amount;

  const AmountViewerBoxWidget({
    super.key,
    required this.title,
    this.left = 20,
    this.right = 20,
    this.top = 20,
    this.bottom = 20,
    this.amount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:
            EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Rs. $amount',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
