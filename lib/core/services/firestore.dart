import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class FireCloudStore {
  static Stream<QuerySnapshot> category =
      FirebaseFirestore.instance.collection('category').snapshots();

  static Stream<QuerySnapshot> banner =
      FirebaseFirestore.instance.collection('banner').snapshots();

  static Stream<QuerySnapshot> exclusive =
      FirebaseFirestore.instance.collection('exclusive').snapshots();
  static Stream<QuerySnapshot> groceries =
      FirebaseFirestore.instance.collection('groceries').snapshots();
  static Stream<QuerySnapshot> topSeller =
      FirebaseFirestore.instance.collection('top-seller').snapshots();
}
