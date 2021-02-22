import 'package:flutter/cupertino.dart';
import 'package:gellohabits/core/entities/task.entity.dart';
import 'package:gellohabits/core/enums/task.enum.dart';
import 'package:gellohabits/home_screen/widgets/task_card.dart';
import 'package:mobx/mobx.dart';
part 'task_list_store.g.dart';

class TaskListStore = TaskListStoreBase with _$TaskListStore;

abstract class TaskListStoreBase with Store {
  @observable
  Widget _taskListWidget = Container();

  @observable
  List<TaskEntity> _taskListEntities = [];

  @computed
  Widget get taskListWidget => _taskListWidget;

  @computed
  List<TaskEntity> get taskListEntities => _taskListEntities;

  @action
  setTaskListWidget(Widget taskListWidget) {
    _taskListWidget = taskListWidget;
  }

  @action
  setTaskListEntities(List<TaskEntity> taskListEntities) {
    _taskListEntities = taskListEntities;
    buildTaskListWidget(TaskEnum.HABIT);
  }

  @action
  buildTaskListWidget(TaskEnum type) {
    List<TaskEntity> filteredList = _taskListEntities.where((element) => element.type == type).toList();
    setTaskListWidget(
      ListView.builder(
        padding: EdgeInsets.only(bottom: 80),
        itemCount: filteredList.length,
        itemBuilder: (context, index) {
          return TaskCard(filteredList.elementAt(index));
        },
      )
    );
  }

  @action
  List<TaskEntity> getUserTaskByType(TaskEnum type) => _taskListEntities.where((element) => element.type == type).toList();

  @action
  pushTask(TaskEntity task) {
    _taskListEntities.add(task);
    buildTaskListWidget(task.type);
  }

  @action
  removeTask(TaskEntity task) {
    _taskListEntities.remove(task);
    buildTaskListWidget(task.type);
  }
}
