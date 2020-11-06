import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:shikha_makeover_customer_app/model/service_firebase_model.dart';

class ServiceProvider with ChangeNotifier {
  List<ServiceModel> serviceModelList = [];
  ServiceModel serviceModel;
  Future<void> getService() async {
    List<ServiceModel> serverData = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('services').get();
    querySnapshot.docs.forEach(
      (element) {
        print('service model called');
        serviceModel = ServiceModel(
          color: element.data()['color'],
          imgUrl: element.data()['imgUrl'],
          subText: element.data()['subText'],
          title: element.data()['title'],
          fileName: element.data()['fileName'],
        );
        serverData.add(serviceModel);
      },
    );
    serviceModelList = serverData;
    notifyListeners();
  }

  List<ServiceModel> get getServiceModel {
    print('service list called');
    return serviceModelList;
  }
}
