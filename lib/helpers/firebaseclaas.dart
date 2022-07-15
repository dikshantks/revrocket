import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:revrocket/components/discussuion_bubble.dart';

class FireStoreDataBase {
  List discuss_list = [];
  final CollectionReference collectionRef =
      FirebaseFirestore.instance.collection("Discussion_part");

  Future getData() async {
    try {
      await collectionRef.get().then((querySnapshot) {
        for (var result in querySnapshot.docs) {
          discuss_list.add(result.data());
        }
      });

      return discuss_list;
    } catch (e) {
      debugPrint("Error - $e");
      return e;
    }
  }

  List dataList = [];

  Widget buildkaro() {
    return FutureBuilder(
      future: FireStoreDataBase().getData(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text(
            "Something went wrong",
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          dataList = snapshot.data as List;
          return buildItems(dataList);
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget buildItems(dataList) => ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: dataList.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return discussion_bubble(
            palet_size: MediaQuery.of(context).size.height * 0.3,
            question: dataList[index]["question"],
            descrition: dataList[index]['description'],
            name: dataList[index]['user'],
          );
        },
      );
}
