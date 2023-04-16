import 'dart:convert';

import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  final String name;
  final String profilePic;
  final String uid;
  final bool isOnline;
  final String phoneNumber;
  final List<String> groupId;
  UserModel({
    required this.name,
    required this.profilePic,
    required this.uid,
    required this.isOnline,
    required this.phoneNumber,
    required this.groupId,
  });

  UserModel copyWith({
    String? name,
    String? profilePic,
    String? uid,
    bool? isOnline,
    String? phoneNumber,
    List<String>? groupId,
  }) {
    return UserModel(
      name: name ?? this.name,
      profilePic: profilePic ?? this.profilePic,
      uid: uid ?? this.uid,
      isOnline: isOnline ?? this.isOnline,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      groupId: groupId ?? this.groupId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'profilePic': profilePic,
      'uid': uid,
      'isOnline': isOnline,
      'phoneNumber': phoneNumber,
      'groupId': groupId,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '' ,
      profilePic: map['profilePic'] ?? '',
      uid: map['uid'] ?? '',
      isOnline: map['isOnline'] ?? false,
      phoneNumber: map['phoneNumber'] ?? '',
      groupId: List<String>.from(map['groupId']),
    );
  }



  @override
  String toString() {
    return 'UserModel(name: $name, profilePic: $profilePic, uid: $uid, isOnline: $isOnline, phoneNumber: $phoneNumber, groupId: $groupId)';
  }


}
