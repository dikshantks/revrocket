import 'package:firebase_auth/firebase_auth.dart';

class Users {
  late String username = '';
  late String imgurl = '';
  late String userUid = '';
  late int questionsAsked = 0;

  Users({
    this.imgurl = '',
    this.questionsAsked = 0,
    this.userUid = '',
    this.username = '',
  });
}

class DiscusionsList extends Users {
  late String docID = "";
  late String question = "";
  late String description = "";
  late String username = super.username;
  late String dateAdded = "";
  late int likes = 0;

  late List<Map<String, dynamic>> listAnswer = [
    {
      "answer": "",
      "timeofpublish": "",
      "uid": "",
      'username': "",
    },
    {
      "answer": "",
      "timeofpublish": "",
      "uid": "",
      'username': "",
    }
  ];

  DiscusionsList({
    this.docID = '',
    this.dateAdded = '',
    this.description = '',
    required this.listAnswer,
    this.question = '',
    this.username = '',
    this.likes = 0,
  });
}
