import 'package:cloud_firestore/cloud_firestore.dart';

class FireCloudStore {
  static Stream<QuerySnapshot> category =
      FirebaseFirestore.instance.collection('category').snapshots();

  static Stream<QuerySnapshot> banner =
      FirebaseFirestore.instance.collection('banner').snapshots();

  static Stream<QuerySnapshot> exclusive =
      FirebaseFirestore.instance.collection('exclusive').snapshots();
}
