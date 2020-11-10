import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shikha_makeover_customer_app/components/appWidgets/SubPackageSelector.dart';
import 'package:shikha_makeover_customer_app/components/service_provider.dart';
import 'package:shikha_makeover_customer_app/screens/Cart.dart';

class ClassicPackage extends StatefulWidget {
  @override
  _ClassicPackageState createState() => _ClassicPackageState();
}

class _ClassicPackageState extends State<ClassicPackage> {
  ServiceProvider packageData;
  @override
  Widget build(BuildContext context) {
    packageData = Provider.of<ServiceProvider>(context, listen: false);
    packageData.getClassic();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Color(0xffFFFAFA),
        elevation: 0,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
          onTap: () => Navigator.pop(context),
        ),
        title: Text(
          'CLASSIC PACKAGE',
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
      body: Column(
        children: [
          SubPackageSelector(),
          Expanded(
            child: ListView.builder(
              itemCount: packageData.getClassicModel.length,
              itemBuilder: (BuildContext context, index) {
                // ClassicModel classicModel = classicPackageDate[index];
                return Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(8),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    child: Image(
                                      image: NetworkImage(packageData
                                          .getClassicModel[index].img),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    padding: EdgeInsets.only(
                                        top: 10,
                                        left: 10,
                                        bottom: 10,
                                        right: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          packageData
                                              .getClassicModel[index].title,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800,
                                            fontFamily: 'inter',
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '₹ ${packageData.getClassicModel[index].currentPrice}',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            Text(
                                              '₹ ${packageData.getClassicModel[index].previousPrice}',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 15,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            )
                                          ],
                                        ),
                                        Text(
                                            '${packageData.getClassicModel[index].time} min'),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ClipOval(
                                          child: Material(
                                            color: Color(
                                                0xffff7d85), // button color
                                            child: InkWell(
                                              splashColor:
                                                  Colors.red, // inkwell color
                                              child: SizedBox(
                                                  width: 40,
                                                  height: 40,
                                                  child: Icon(Icons.add)),
                                              onTap: () {},
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            '1',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        ClipOval(
                                          child: Material(
                                            color: Color(
                                                0xffff7d85), // button color
                                            child: InkWell(
                                              splashColor:
                                                  Colors.red, // inkwell color
                                              child: SizedBox(
                                                width: 40,
                                                height: 40,
                                                child: Icon(
                                                  FontAwesomeIcons.minus,
                                                  size: 15,
                                                ),
                                              ),
                                              onTap: () {},
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // second half of card
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Package Details',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  // SizedBox(
                                  //   height: 10,
                                  // ),
                                  Text(
                                    packageData.getClassicModel[index].details,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'inter',
                                      height: 1.3,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('PROCEED TO CART'),
        icon: Icon(FontAwesomeIcons.arrowCircleRight),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
