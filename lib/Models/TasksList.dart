class Task {
  final String name;
  bool isCheck;

  Task({this.name, this.isCheck  = false});

  void toggleState() {
    isCheck = !isCheck;
  }
}
