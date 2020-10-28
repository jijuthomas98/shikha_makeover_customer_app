import 'package:flutter/material.dart';
import 'screens/Onboarding.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    precacheImage(AssetImage('asset/images/Wallpapers/Opening.jpg'), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shikha Makerover',
      theme: ThemeData(
        primaryColor: Color(0xffe9ceb8),
        scaffoldBackgroundColor: Color(0xfff3f5f7),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), openOnBoard);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: AssetImage('asset/images/Wallpapers/Opening.jpg'),
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                            'asset/images/Logo/LogoAndMonolog/SM.png'),
                      ),
                    ),
                  ),
                  Text(
                    'Shikha Makeover',
                    style: TextStyle(
                      fontFamily: 'inter',
                      fontSize: 37,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    'Professional Makeup',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      letterSpacing: 7,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'The Glam Factory',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black45,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void openOnBoard() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Onboarding()));
  }
}
