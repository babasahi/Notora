class Subject {
  double note;
  final String name;
  final int coefficient;

  Subject({required this.name, this.note = 10, required this.coefficient});
}

class Subjects {
  final List<Subject> subjects;
  Subjects({required this.subjects});
}
