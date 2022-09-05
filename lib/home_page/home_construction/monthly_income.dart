import 'package:flutter/material.dart';
import 'package:phone_project/home_page/reusable_card.dart';
class MonthlyIncome extends StatelessWidget {
  const MonthlyIncome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return  Container(
      height: 200,
      width: screenWidth - 10,
      child: ReusableCard(
        color: (Color(0xFFf2f2f2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Доход за февраль 2021",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              child: Text(
                "1 345 685 ₽",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  child: Text(
                    "540 390 ₽  ",
                    style: TextStyle(
                      color: Color(0xFFa77753),
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: (Color(0xFFebdcd1)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    "долг",
                    style: TextStyle(
                      color: Color(0xFFa77753),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}
