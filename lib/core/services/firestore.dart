import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FireCloudStore {
  static Stream<QuerySnapshot> category =
      FirebaseFirestore.instance.collection('category').snapshots();
}
