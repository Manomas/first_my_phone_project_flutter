import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:phone_project/constans.dart';
import 'package:phone_project/navegation.dart';
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
    return Scaffold(

      backgroundColor: kBG,
      appBar: AppBar(
        backgroundColor: kBG,
        centerTitle: true,
        title: Text(
          "BMI calculatour",
          style: kBodyTextStyle,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: DraggableScrollableSheet(

        initialChildSize: 1,
        maxChildSize: 1,
        minChildSize: 0.2,
        builder: (context, scrollController){

          return SingleChildScrollView(
            controller: scrollController,

            child:    Container(child: Column(

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
                              "doxod za fevral 2021",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                              child: Row(
                                children: [
                                  Text(
                                    "1",
                                    style:kNumberTextStyle,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "345",
                                    style: kNumberTextStyle,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "650",
                                    style: kNumberTextStyle ,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "P",
                                    style:kNumberTextStyle,
                                  ),
                                ],
                              )),
                          Row(
                            children: [
                              Text(
                                "540",
                                style:kSecondNumberTextStyle,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "390",
                                style:kSecondNumberTextStyle,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "P",
                                style: kSecondNumberTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
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
                            "obchi daxod",
                            style: kTextStayle,
                          ),
                          Text(
                            '145375530P',
                            style: kNumberTextStyle,
                          ),
                          Text(
                            "chistaya pribil",
                            style:kTextStayle,
                          ),
                          Text(
                            '56531270P',
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
                            "uprashonni daxod za mecec",
                            style: kTextStayle,
                          ),
                          Text(
                            "540390P",
                            style: kNumberTextStyle,
                          ),

                          Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                          Text(
                            "Za prostoi swobodni pl.",
                            style: kTextStayle,
                          ),
                          Text(
                            "260000P",
                            style: kNumberTextStyle,
                          ),
                          Text(
                            "Za dolgi",
                            style: kTextStayle,
                          ),
                          Text(
                            "220300P",
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
                            "uprashonni daxod za mecec",
                            style: kTextStayle,
                          ),
                          Text(
                            "540390P",
                            style: kNumberTextStyle,
                          ),

                          Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                          Text(
                            "Za prostoi swobodni pl.",
                            style: kTextStayle,
                          ),
                          Text(
                            "260000P",
                            style: kNumberTextStyle,
                          ),
                          Text(
                            "Za dolgi",
                            style: kTextStayle,
                          ),
                          Text(
                            "220300P",
                            style: kNumberTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),



              ],

            ),)


          );
        }

      ),

    bottomNavigationBar: ClipRRect(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30.0),
    topRight: Radius.circular(30.0),
    ),
            child :BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.green
            ),
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
