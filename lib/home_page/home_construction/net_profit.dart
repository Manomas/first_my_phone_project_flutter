import 'package:flutter/material.dart';
import 'package:phone_project/home_page/reusable_card.dart';

class NetProfit extends StatelessWidget {
  const NetProfit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 200,
      width: screenWidth - 10,
      child: ReusableCard(
        color: (Color(0xFFe2efef)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Общий доход",
              style: TextStyle(
                color: Color(0xFF38c7c7),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '145 375 530 ₽',
              style: TextStyle(
                color: Color(0xFF38c7c7),
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Чистая прибыль ",
              style: TextStyle(
                color: Color(0xFF38c7c7),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '56 531 270 ₽',
              style: TextStyle(
                color: Color(0xFF38c7c7),
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
