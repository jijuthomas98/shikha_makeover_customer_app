import 'package:flutter/material.dart';
import 'package:shikha_makeover_customer_app/screens/Payment.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    // Future<void> _changeAddress()async{
    //   switch (await showDialog(context: context,builder: (BuildContext context){
    //     return SimpleDialog(
    //       title: Text(('Change Address')),
    //       children: [
    //         TextField(
    //
    //         )
    //       ],
    //     );
    //   })){
    //     case
    //   }
    // };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: () => Navigator.pop(context),
          ),
          title: Text(
            'ADDRESS',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // color: Colors.grey,
              padding: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name :  Jiju Thomas',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Address : House No 6, Imperial Group Colony, Tilhari, Jabalpur, Madhya Pradesh, 482020',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Mobile :  9779965233',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ButtonTheme(
                      minWidth: 300,
                      height: 45,
                      child: RaisedButton(
                          child: Text('CHANGE OR ADD ADDRESS'),
                          onPressed: () {}),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    //color: Colors.green,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PRICE DETAILS',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order Total',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '₹ 2980',
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Discount',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '₹ 900',
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Amount',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              '₹ 1200',
                              style: TextStyle(fontSize: 17),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Payment()));
              },
              child: Container(
                height: 60,
                color: Colors.red,
                child: Center(
                    child: Text(
                  'SELECT PAYMENT',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
