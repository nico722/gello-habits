// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskListStore on TaskListStoreBase, Store {
  Computed<Widget> _$taskListWidgetComputed;

  @override
  Widget get taskListWidget =>
      (_$taskListWidgetComputed ??= Computed<Widget>(() => super.taskListWidget,
              name: 'TaskListStoreBase.taskListWidget'))
          .value;
  Computed<List<TaskEntity>> _$taskListEntitiesComputed;

  @override
  List<TaskEntity> get taskListEntities => (_$taskListEntitiesComputed ??=
          Computed<List<TaskEntity>>(() => super.taskListEntities,
              name: 'TaskListStoreBase.taskListEntities'))
      .value;

  final _$_taskListWidgetAtom = Atom(name: 'TaskListStoreBase._taskListWidget');

  @override
  Widget get _taskListWidget {
    _$_taskListWidgetAtom.reportRead();
    return super._taskListWidget;
  }

  @override
  set _taskListWidget(Widget value) {
    _$_taskListWidgetAtom.reportWrite(value, super._taskListWidget, () {
      super._taskListWidget = value;
    });
  }

  final _$_taskListEntitiesAtom =
      Atom(name: 'TaskListStoreBase._taskListEntities');

  @override
  List<TaskEntity> get _taskListEntities {
    _$_taskListEntitiesAtom.reportRead();
    return super._taskListEntities;
  }

  @override
  set _taskListEntities(List<TaskEntity> value) {
    _$_taskListEntitiesAtom.reportWrite(value, super._taskListEntities, () {
      super._taskListEntities = value;
    });
  }

  final _$TaskListStoreBaseActionController =
      ActionController(name: 'TaskListStoreBase');

  @override
  dynamic setTaskListWidget(Widget taskListWidget) {
    final _$actionInfo = _$TaskListStoreBaseActionController.startAction(
        name: 'TaskListStoreBase.setTaskListWidget');
    try {
      return super.setTaskListWidget(taskListWidget);
    } finally {
      _$TaskListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTaskListEntities(List<TaskEntity> taskListEntities) {
    final _$actionInfo = _$TaskListStoreBaseActionController.startAction(
        name: 'TaskListStoreBase.setTaskListEntities');
    try {
      return super.setTaskListEntities(taskListEntities);
    } finally {
      _$TaskListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic buildTaskListWidget(TaskEnum type) {
    final _$actionInfo = _$TaskListStoreBaseActionController.startAction(
        name: 'TaskListStoreBase.buildTaskListWidget');
    try {
      return super.buildTaskListWidget(type);
    } finally {
      _$TaskListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

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
taskListWidget: ${taskListWidget},
taskListEntities: ${taskListEntities}
    ''';
  }
}
