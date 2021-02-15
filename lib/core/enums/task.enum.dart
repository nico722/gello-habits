enum TaskEnum {
  TODO,
  DAILY,
  HABIT
}

extension TaskEnumExtension on TaskEnum {
  String get name {
    switch (this) {
      case TaskEnum.TODO:
        return 'TODO';
      case TaskEnum.HABIT:
        return 'HABIT';
      case TaskEnum.DAILY:
        return 'DAILY';
      default:
        return '';
    }
  }
}