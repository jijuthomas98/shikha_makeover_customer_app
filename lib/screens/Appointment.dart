import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shikha_makeover_customer_app/screens/Cart.dart';

import 'LandingPage.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  int currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffFFFAFA),
        scaffoldBackgroundColor: Color(0xffFFFAFA),
      ),
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => LandingPage())),
          ),
          title: Text(
            'APPOINTMENTS',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                FontAwesomeIcons.shoppingBag,
                color: Colors.black54,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
          ],
        ),
        body: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                controller: _pageController,
                children: [
                  ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          height: MediaQuery.of(context).size.height / 7,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(8),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Appointment No: 007',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            right: 20,
                                            left: 20),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Text('Paid'),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('19/10/2020'),
                                      Text('11 AM'),
                                      Text('₹ 998'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          height: MediaQuery.of(context).size.height / 7,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(8),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Appointment No: 007',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            right: 20,
                                            left: 20),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Text(
                                          'Paid',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '19/10/2020',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text('11 AM'),
                                      Text('₹ 998'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ],
                onPageChanged: (value) => {setCurrentPage(value)},
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    _pageController.animateToPage(currentPage + 1,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.linear);
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Upcoming Appointments !'),
                      duration: Duration(milliseconds: 3),
                    ));
                  },
                  child: Container(
                    padding: EdgeInsets.all(2),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.shade400,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                        child: Text(
                      'UPCOMING',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _pageController.animateToPage(currentPage - 1,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.linear);
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Previous Appointments !'),
                      duration: Duration(milliseconds: 3),
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red.shade400,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                        child: Text(
                      'PREVIOUS',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }
}
