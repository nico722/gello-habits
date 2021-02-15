import 'package:gellohabits/core/enums/task.enum.dart';

class TaskEntity {
  TaskEnum type;
  String title;
  String description;
  int successPoints;
  int failurePoints;

  TaskEntity({
    this.type,
    this.title,
    this.description,
    this.successPoints,
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
