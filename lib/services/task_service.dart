import 'package:gellohabits/core/entities/task.entity.dart';
import 'package:gellohabits/core/enums/task.enum.dart';

class TaskService {
  // TODO: Remove dummy data and replace for persistent data
  List<TaskEntity> allTasks;
  TaskService() {
    this.allTasks = [
      TaskEnum.HABIT,
      TaskEnum.HABIT,
      TaskEnum.HABIT,
      TaskEnum.TODO,
      TaskEnum.HABIT,
      TaskEnum.DAILY
    ]
        .map((e) => TaskEntity.build(
            type: e,
            title: '${e.name.toLowerCase()} task',
            description: '${e.name.toLowerCase()} task description',
            successPoints: 1,
            failurePoints: 1))
        .toList();
  }

  List<TaskEntity> getUserTasksByType(TaskEnum taskType) {
    return this.allTasks.where((e) => e.type == taskType).toList();
  }
}
