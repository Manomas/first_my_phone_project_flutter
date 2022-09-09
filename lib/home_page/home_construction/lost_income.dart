import 'package:flutter/material.dart';
import 'package:phone_project/home_page/reusable_card.dart';
class LostIncome extends StatelessWidget {
  const LostIncome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 300,
      width: screenWidth - 10,
      child: ReusableCard(
        color: (Color(0xFFf2f2f2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text(
              "Упущенный доход за период",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "540 390 ₽",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Divider(
              color: Color(0xFFcccccc),
              thickness: 2,
            ),
            Text(
              "За простой свободной пл.",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "260 000 ₽",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "За долги",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "220 300 ₽",
              style: TextStyle(
                color: Colors.black87,
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
