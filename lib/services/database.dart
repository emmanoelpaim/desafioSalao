import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseService{

  final String uid;

  DatabaseService({this.uid});

  // collection reference
  final CollectionReference userCollection = Firestore.instance.collection('user');


  Future updateUserData(String name,String typeRegister) async {
    return await userCollection.document(uid).setData({
      'name': name,
      'type_register': typeRegister
    });

  }
}