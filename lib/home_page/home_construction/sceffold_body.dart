import 'package:flutter/material.dart';
import 'package:phone_project/home_page/home_construction/monthly_income.dart';
import 'package:phone_project/home_page/home_construction/net_profit.dart';
import 'package:phone_project/home_page/home_construction/semi_annual_periud.dart';
import 'package:phone_project/home_page/home_construction/lost_income.dart';
import 'package:phone_project/home_page/home_construction/total_income.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return  DraggableScrollableSheet(
        initialChildSize: 1,
        maxChildSize: 1,
        minChildSize: 0.2,
        builder: (context, scrollController) {
          return SingleChildScrollView(
              physics: const RangeMaintainingScrollPhysics(),
              controller: scrollController,
              child: Container(
                width: screenWidth - 10,
                child: Column(
                  children: [
                    MonthlyIncome(),
                    SemiAnnual(),
                    NetProfit(),
                    LostIncome(),
                    TotalIncome(),
                  ],
                ),
              ));
        });
  }
}
