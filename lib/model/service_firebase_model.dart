import 'package:flutter/material.dart';

class ServiceModel {
  final String imgUrl, title, subText, color, fileName;
  ServiceModel({
    @required this.color,
    @required this.imgUrl,
    @required this.subText,
    @required this.title,
    this.fileName,
  });
}
