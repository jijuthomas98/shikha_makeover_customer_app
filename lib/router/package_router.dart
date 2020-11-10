import 'package:flutter/material.dart';
import 'package:shikha_makeover_customer_app/screens/Services.dart';
import 'package:shikha_makeover_customer_app/screens/packages/BodyMassage.dart';
import 'package:shikha_makeover_customer_app/screens/packages/ClassicPackage.dart';
import 'package:shikha_makeover_customer_app/screens/packages/DeTanBleach.dart';
import 'package:shikha_makeover_customer_app/screens/packages/FacialAndClean.dart';
import 'package:shikha_makeover_customer_app/screens/packages/Hair.dart';
import 'package:shikha_makeover_customer_app/screens/packages/MakeUp.dart';
import 'package:shikha_makeover_customer_app/screens/packages/MediPedicure.dart';
import 'package:shikha_makeover_customer_app/screens/packages/Threading.dart';
import 'package:shikha_makeover_customer_app/screens/packages/Waxing.dart';

Route<dynamic> serviceRoutes(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => Services());
      break;
    case 'ClassicPackage':
      return MaterialPageRoute(builder: (context) => ClassicPackage());
      break;
    case 'DeTanBleach':
      return MaterialPageRoute(builder: (context) => DeTanBleach());
      break;
    case 'FacialAndClean':
      return MaterialPageRoute(builder: (context) => FacialAndClean());
      break;
    case 'Hair':
      return MaterialPageRoute(builder: (context) => Hair());
      break;
    case 'MakeUp':
      return MaterialPageRoute(builder: (context) => MakeUp());
      break;
    case 'BodyMassage':
      return MaterialPageRoute(builder: (context) => BodyMassage());
      break;
    case 'MediPedicure':
      return MaterialPageRoute(builder: (context) => MediPediCure());
      break;
    case 'Threading':
      return MaterialPageRoute(builder: (context) => Threading());
      break;
    case 'Waxing':
      return MaterialPageRoute(builder: (context) => Waxing());
      break;
  }
}
