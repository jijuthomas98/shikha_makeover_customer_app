import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shikha_makeover_customer_app/components/service_provider.dart';
import 'package:shikha_makeover_customer_app/screens/Cart.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  ServiceProvider serviceData;
  @override
  Widget build(BuildContext context) {
    serviceData = Provider.of<ServiceProvider>(context, listen: false);
    serviceData.getService();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
            onTap: () => Navigator.pop(context),
          ),
          title: Text(
            'SERVICES',
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
        body: ListView.builder(
          itemCount: serviceData.getServiceModel.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, index) {
            // Service service = services[index];
            return InkWell(
              onTap: () =>
                  changePackage(serviceData.getServiceModel[index].fileName),
              child: Container(
                height: MediaQuery.of(context).size.height / 7,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 6),
                child: Card(
                  color: Color(
                      int.parse(serviceData.getServiceModel[index].color)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                serviceData.getServiceModel[index].title,
                                style: TextStyle(
                                  fontFamily: 'inter',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                serviceData.getServiceModel[index].subText,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'inter',
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Image(
                          image: NetworkImage(
                              serviceData.getServiceModel[index].imgUrl),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void changePackage(Widget fileName) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => fileName));
  }
}
