import 'package:flutter/material.dart';
import 'package:phone_project/navigation_bar.dart';
import 'package:phone_project/home_page/home_construction/body.dart';
class ScefdoldAndAppBarrPage extends StatelessWidget {
  const ScefdoldAndAppBarrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Color(0xFF156a80),
          title: Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton(
                    // ignore: avoid_returning_null_for_void
                    onPressed: () => null,
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(55, 255, 255, 255),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      side: const BorderSide(
                        width: 0,
                        color: Color.fromARGB(0, 255, 255, 255),
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(55, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      side: const BorderSide(
                        width: 0,
                        color: Color.fromARGB(0, 255, 255, 255),
                      ),
                    ),
                    onPressed: () {
                          () => null;
                    },
                    child: const Text(
                      'Бизнес-центр Гулливер',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ]
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          centerTitle: false,
          titleSpacing: 0.0,
        ),
      ),
      body: const Body(),
      bottomNavigationBar:const Navigation(),
    );
  }
}
