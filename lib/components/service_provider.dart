import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ServiceProvider with ChangeNotifier {
  String subPackage;
  ServiceProvider({this.subPackage});

  //Stream of services

  Stream<QuerySnapshot> getStreamServices() {
    return FirebaseFirestore.instance.collection('services').snapshots();
  }

  //Stream of Package
  Stream<QuerySnapshot> getStreamPackage(String packages) {
    return FirebaseFirestore.instance
        .collection('services')
        .doc('$packages')
        .collection('$subPackage')
        .snapshots();
  }
}
