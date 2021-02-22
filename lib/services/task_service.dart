import 'package:flutter/cupertino.dart';
import 'package:gellohabits/core/entities/task.entity.dart';
import 'package:gellohabits/core/enums/task.enum.dart';
import 'package:gellohabits/stores/task_list_store.dart';

class TaskService {
  TaskListStore _taskListStore;

  // TODO: Remove dummy data and replace for persistent data
  TaskService({
    @required
    taskListStore
  }) {
    _taskListStore = taskListStore;

    var allTasks = [
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
    this._taskListStore.setTaskListEntities(allTasks);
  }

  addTask(TaskEntity task) {
    this._taskListStore.pushTask(task);
  }
}
