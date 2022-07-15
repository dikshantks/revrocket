// import 'package:revrocket/models/user.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class UserServices {
//   String collection = "users";

//   void createUser({
//     String id = "",
//     String name = "",
//     String photo = "",
//     int questions_asked = 0,
//   }) {
//     FirebaseFirestore.instance.collection(collection).doc(id).set({
//       "name": name,
//       "id": id,
//       "photo": photo,
//       "question_asked": questions_asked
//     });
//   }

//   Future<UserModel> getUserById(String id) => FirebaseFirestore.instance
//           .collection(collection)
//           .doc(id)
//           .get()
//           .then((doc) {
//         return UserModel.fromSnapshot(doc);
//       });

//   Future<bool> doesUserExist(String id) async => FirebaseFirestore.instance
//       .collection(collection)
//       .doc(id)
//       .get()
//       .then((value) => value.exists);

//   Future<List<UserModel>> getAll() async =>
//       FirebaseFirestore.instance.collection(collection).get().then((result) {
//         List<UserModel> users = [];
//         for (DocumentSnapshot user in result.docs) {
//           users.add(UserModel.fromSnapshot(user));
//         }
//         return users;
//       });
// }
