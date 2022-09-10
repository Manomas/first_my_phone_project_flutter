import 'package:flutter/material.dart';

class SemiAnnual extends StatelessWidget {
  const SemiAnnual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth - 10,
      margin: const EdgeInsets.only(top: 25),
      color: (const Color(0xFFffffff)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 3,
          ),
          const Text(
            "За период",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 45,
          ),
          Container(
            padding: const EdgeInsets.all(9),
            decoration: BoxDecoration(
              color: (const Color(0xFFe0e7e7)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "январь 2021",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            child: const Text(
              "по",
              style: TextStyle(
                color: (Color(0xFFe0e7e7)),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: screenWidth - 310,
            padding: const EdgeInsets.all(9),
            decoration: BoxDecoration(
              color: (const Color(0xFFe0e7e7)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
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
