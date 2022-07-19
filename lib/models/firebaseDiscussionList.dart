import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:revrocket/tests/test_class.dart';

class FirebaseStore {
  final CollectionReference discission =
      FirebaseFirestore.instance.collection('Discussion_part');

  Future getLists() async {
    List<DiscusionsList> finalList = [];

    try {
      await FirebaseFirestore.instance
          .collection('Discussion_part')
          .get()
          .then(
            (snapshot) => snapshot.docs.map(
              (doc) => DiscusionsList.fromjson(doc.data()),
            ),
          )
          .then((doc) {
        for (var val in doc) {
          finalList.add(val);
        }
      });
      return finalList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

Stream<List<DiscusionsList>> readFinalDiscus() => FirebaseFirestore.instance
    .collection('Discussion_part')
    .snapshots()
    .map((snapshot) => snapshot.docs
        .map(
          (doc) => DiscusionsList.fromjson(doc.data()),
        )
        .toList());
