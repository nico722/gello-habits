import 'package:flutter/cupertino.dart';
import 'package:gellohabits/core/enums/task.enum.dart';

class TaskEntity {
  TaskEnum type;
  String title;
  String description;
  int successPoints;
  int failurePoints;

  TaskEntity({
    @required
    this.type,
    @required
    this.title,
    this.description,
    @required
    this.successPoints,
    @required
    this.failurePoints,
  });

  static TaskEntity build(
      {TaskEnum type,
      String title,
      String description,
      int successPoints,
      int failurePoints}) {
    return TaskEntity(
      type: type,
      title: title,
      description: description,
      successPoints: successPoints,
      failurePoints: failurePoints,
    );
  }
}
