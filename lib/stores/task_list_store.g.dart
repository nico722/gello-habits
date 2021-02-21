// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskListStore on TaskListStoreBase, Store {
  Computed<List<TaskEntity>> _$taskListComputed;

  @override
  List<TaskEntity> get taskList =>
      (_$taskListComputed ??= Computed<List<TaskEntity>>(() => super.taskList,
              name: 'TaskListStoreBase.taskList'))
          .value;

  final _$_taskListAtom = Atom(name: 'TaskListStoreBase._taskList');

  @override
  List<TaskEntity> get _taskList {
    _$_taskListAtom.reportRead();
    return super._taskList;
  }

  @override
  set _taskList(List<TaskEntity> value) {
    _$_taskListAtom.reportWrite(value, super._taskList, () {
      super._taskList = value;
    });
  }

  final _$TaskListStoreBaseActionController =
      ActionController(name: 'TaskListStoreBase');

  @override
  List<TaskEntity> getUserTaskByType(TaskEnum type) {
    final _$actionInfo = _$TaskListStoreBaseActionController.startAction(
        name: 'TaskListStoreBase.getUserTaskByType');
    try {
      return super.getUserTaskByType(type);
    } finally {
      _$TaskListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTaskList(List<TaskEntity> taskList) {
    final _$actionInfo = _$TaskListStoreBaseActionController.startAction(
        name: 'TaskListStoreBase.setTaskList');
    try {
      return super.setTaskList(taskList);
    } finally {
      _$TaskListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic pushTask(TaskEntity task) {
    final _$actionInfo = _$TaskListStoreBaseActionController.startAction(
        name: 'TaskListStoreBase.pushTask');
    try {
      return super.pushTask(task);
    } finally {
      _$TaskListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeTask(TaskEntity task) {
    final _$actionInfo = _$TaskListStoreBaseActionController.startAction(
        name: 'TaskListStoreBase.removeTask');
    try {
      return super.removeTask(task);
    } finally {
      _$TaskListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
taskList: ${taskList}
    ''';
  }
}
