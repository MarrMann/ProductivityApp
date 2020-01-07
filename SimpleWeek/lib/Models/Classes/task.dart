import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:SimpleWeek/Models/global.dart';

class Task {
  List<Task> subTasks;
  String taskID;
  String description;
  Color color;
  bool completed;

  Task(this.description, this.completed, {this.color = greenNormal}){
    taskID = md5.convert(utf8.encode(description)).toString();
  }
}