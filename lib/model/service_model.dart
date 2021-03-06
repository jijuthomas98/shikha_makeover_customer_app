import 'package:flutter/material.dart';
import 'package:shikha_makeover_customer_app/packages/ClassicPackage.dart';
import 'package:shikha_makeover_customer_app/packages/FacialAndClean.dart';
import 'package:shikha_makeover_customer_app/packages/DeTanBleach.dart';
import 'package:shikha_makeover_customer_app/packages/MediPedicure.dart';
import 'package:shikha_makeover_customer_app/packages/Hair.dart';
import 'package:shikha_makeover_customer_app/packages/Threading.dart';
import 'package:shikha_makeover_customer_app/packages/Waxing.dart';
import 'package:shikha_makeover_customer_app/packages/MakeUp.dart';
import 'package:shikha_makeover_customer_app/packages/BodyMassage.dart';

class Service {
  String title;
  String imgUrl;
  String subText;
  int color;
  Widget onPress;

  Service({
    this.title,
    this.imgUrl,
    this.subText,
    this.color,
    this.onPress,
  });
}

List<Service> services = [
  Service(
    title: 'Classic Package',
    imgUrl: 'asset/images/Images/Services/ClassicPackage.jpg',
    subText: 'Best offers, Free Bikni wax',
    color: 0xffEDE3E1,
    onPress: ClassicPackage(),
  ),
  Service(
    title: 'Facial & Clean up',
    imgUrl: 'asset/images/Images/Services/FacialandCleanUp.jpg',
    subText: 'Best offers, Free Bikni wax',
    color: 0xffF4EFDC,
    onPress: FacialAndClean(),
  ),
  Service(
    title: 'De Tan & Bleach',
    imgUrl: 'asset/images/Images/Services/DetanandBleach.jpg',
    subText: 'Best offers, Free Bikni wax',
    color: 0xffEFEDF2,
    onPress: DeTanBleach(),
  ),
  Service(
    title: 'Medi Pedicure',
    imgUrl: 'asset/images/Images/Services/Pedicure.jpg',
    subText: 'Best offers, Free Bikni wax',
    color: 0xffE8E2E4,
    onPress: MediPediCure(),
  ),
  Service(
    title: 'Hair',
    imgUrl: 'asset/images/Images/Services/Hair.jpg',
    subText: 'Best offers, Free Bikni wax',
    color: 0xffDDDAD5,
    onPress: Hair(),
  ),
  Service(
    title: 'Threading',
    imgUrl: 'asset/images/Images/Services/Threading.jpg',
    subText: 'Best offers, Free Bikni wax',
    color: 0xffF4EDE7,
    onPress: Threading(),
  ),
  Service(
    title: 'Waxing',
    imgUrl: 'asset/images/Images/Services/Waxing.jpeg',
    subText: 'Best offers, Free Bikni wax',
    color: 0xffF0E0D3,
    onPress: Waxing(),
  ),
  Service(
    title: 'Make up',
    imgUrl: 'asset/images/Images/Services/Makeup.jpg',
    subText: 'Best offers, Free Bikni wax',
    color: 0xffF8CCC3,
    onPress: MakeUp(),
  ),
  Service(
    title: 'Body Massage',
    imgUrl: 'asset/images/Images/Services/BodyMassage.jpg',
    subText: 'Best offers, Free Bikni wax',
    color: 0xffECECEC,
    onPress: BodyMassage(),
  ),
];
