import 'package:cloud_firestore/cloud_firestore.dart';

class FireCloudStore {
  static Stream<QuerySnapshot> category =
      FirebaseFirestore.instance.collection('category').snapshots();
}
