import 'package:gellohabits/core/entities/task.entity.dart';
import 'package:gellohabits/core/enums/task.enum.dart';
import 'package:mobx/mobx.dart';
part 'task_list_store.g.dart';

class TaskListStore = TaskListStoreBase with _$TaskListStore;

abstract class TaskListStoreBase with Store {
  @observable
  List<TaskEntity> _taskList = [];

  @computed
  List<TaskEntity> get taskList => _taskList;

  @action
  List<TaskEntity> getUserTaskByType(TaskEnum type) => _taskList.where((element) => element.type == type).toList();

  @action
  setTaskList(List<TaskEntity> taskList) {
    _taskList = taskList;
  }

  @action
  pushTask(TaskEntity task) {
    _taskList.add(task);
  }

  @action
  removeTask(TaskEntity task) {
    _taskList.remove(task);
  }
}
