import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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

  List<Map<String, String>>? listAnswer = [
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
    this.listAnswer,
    this.question = '',
    this.username = '',
    this.likes = 0,
  });

  static DiscusionsList fromjson(Map<String, dynamic> json) => DiscusionsList(
        // listAnswer: json['list of answer'],
        question: json['question'],
        docID: json['doc_UID'],
        description: json['description'],
        dateAdded: json['date of publish'],
        likes: json['upvotes'],
        username: json['user'],
      );
}
