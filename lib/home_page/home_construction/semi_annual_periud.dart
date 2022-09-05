import 'package:flutter/material.dart';
class SemiAnnual extends StatelessWidget {
  const SemiAnnual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth - 10,
      margin: EdgeInsets.only(top: 25),
      color: (Color(0xFFffffff)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text(
              "За период",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 45,
          ),
          Container(
            padding: EdgeInsets.all(9),
            decoration: BoxDecoration(
              color: (Color(0xFFe0e7e7)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "январь 2021",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3),
            child: Text(
              "по",
              style: TextStyle(
                color: (Color(0xFFe0e7e7)),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(9),
            decoration: BoxDecoration(
              color: (Color(0xFFe0e7e7)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "июнь 2021",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
