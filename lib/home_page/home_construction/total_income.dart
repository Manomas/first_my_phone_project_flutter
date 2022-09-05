import 'package:flutter/material.dart';
import 'package:phone_project/home_page/reusable_card.dart';
class TotalIncome extends StatelessWidget {
  const TotalIncome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return   Container(
      height: 300,
      width: screenWidth - 10,
      child: ReusableCard(
        color: (Color(0xFFebdcd1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Общий расход",
              style: TextStyle(
                color: Color(0xFFa77753),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "89 764 300 ₽",
              style: TextStyle(
                color: Color(0xFFa77753),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Divider(
              color: Color(0xFFa77753),
              thickness: 2,
            ),
            Text(
              "Коммуналка",
              style: TextStyle(
                color: Color(0xFFa77753),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "54 946 000 ₽",
              style: TextStyle(
                color: Color(0xFFa77753),
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Тех работы",
              style: TextStyle(
                color: Color(0xFFa77753),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "21 124 300 ₽",
              style: TextStyle(
                color: Color(0xFFa77753),
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
