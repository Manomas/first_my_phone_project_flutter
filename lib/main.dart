import 'package:flutter/material.dart';
import 'package:phone_project/constans.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: kBG,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_forward_outlined),
              padding: EdgeInsets.only(right: 25),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
          ],

          title: Container(
            margin: EdgeInsets.only(left: 20),
            padding: EdgeInsets.all(5),

            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(7),
            ),
            child:Text("Бизнес-центр Гулливер"),

          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          centerTitle: false,
          titleSpacing: 0.0,
        ),

        body: DraggableScrollableSheet(
            initialChildSize: 1,
            maxChildSize: 1,
            minChildSize: 0.2,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                  physics: const RangeMaintainingScrollPhysics(),

                  controller: scrollController,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          child: ReusableCard(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Доход за февраль 2021",
                                    style: kTitleTextInContainer,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "1 345 685 ₽",
                                    style: kNumberTextStyle,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "540 390 ₽  ",
                                        style: kSecondNumberTextStyle,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.brown,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Text("долг"),

                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(18),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text("За период"),
                              ),
                              SizedBox(width: 50,),
                              Container(
                                padding: EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Text("январь 2021"),
                              ),
                              Container(
                                child: Text("по"),
                              ),
                              Container(

                                padding: EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Text("июнь 2021"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          child: ReusableCard(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  "Общий доход",
                                  style: kTitleTextInContainer,
                                ),
                                Text(
                                  '145 375 530 ₽',
                                  style: kNumberTextStyle,
                                ),
                                Text(
                                  "Чистая прибыль ",
                                  style: kTitleTextInContainer,
                                ),
                                Text(
                                  '56 531 270 ₽',
                                  style: kNumberTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 300,
                          child: ReusableCard(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  "Упущенный доход за период",
                                  style: kTitleTextInContainer,
                                ),
                                Text(
                                  "540 390 ₽",
                                  style: kNumberTextStyle,
                                ),
                                Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),
                                Text(
                                  "За простой свободной пл.",
                                  style: kTitleTextInContainer,
                                ),
                                Text(
                                  "260 000 ₽",
                                  style: kNumberTextStyle,
                                ),
                                Text(
                                  "За долги",
                                  style: kTitleTextInContainer,
                                ),
                                Text(
                                  "220 300 ₽",
                                  style: kNumberTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 300,
                          child: ReusableCard(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  "Общий расход",
                                  style: kTitleTextInContainer,
                                ),
                                Text(
                                  "89 764 300 ₽",
                                  style: kNumberTextStyle,
                                ),
                                Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),
                                Text(
                                  "Коммуналка",
                                  style: kTitleTextInContainer,
                                ),
                                Text(
                                  "54 946 000 ₽",
                                  style: kSecondNumberTextStyle,
                                ),
                                Text(
                                  "Тех работы",
                                  style: kTitleTextInContainer,
                                ),
                                Text(
                                  "21 124 300 ₽",
                                  style: kSecondNumberTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
            }),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.green),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.deepOrangeAccent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.purpleAccent,
              ),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5,
          ),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;

  final Widget child;

  const ReusableCard({
    Key? key,
    this.color = kInactiveCardColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
