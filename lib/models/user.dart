// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  late String Uid;
  late String NAME = "name";
  late String ImgURL = "email";

  late int Question_asked;

  UserModel({this.Uid = '', this.NAME = ''});

//   String _uid = "";
//   String _name = "";
//   String _imgURL = "";

//   int _quesition_asked = 0;

// //  getters
//   String get name => _name;
//   String get imgURL => _imgURL;
//   String get uid => _uid;
//   int get ques_asked => _quesition_asked;

  // UserModel.fromSnapshot(DocumentSnapshot snapshot) {
  //   _name = snapshot[NAME];
  //   _imgURL = snapshot[ImgURL];
  //   _uid = snapshot[uid];
  //   _quesition_asked = snapshot[Question_asked];
  // }

  Future createUser({required String name}) async {
    final docUser = FirebaseFirestore.instance.collection("users").doc();

    final fuser = UserModel(NAME: name, Uid: docUser.id);

    final json = fuser.tojson();

    await docUser.set(json);
  }

  Map<String, dynamic> tojson() => {
        'uid': Uid,
        'username': NAME,
        'img_url': ImgURL,
        'question_asked': Question_asked,
      };
}
