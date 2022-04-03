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

class WhoAreWeData {
  final String part1 =
      'Babe Saleh is a computer programmer who decided to start a software startup. graduated from Laayoune High School., with a baccalaureate in Natural Sciences and currently majoring in Computer Engineering at the Higher School of Technology (EST) in Casablanca.';
  final String part2 =
      'He has an aspiring vision in software development business particularly app development. And in 04/10/2021  he launched his first app, Telmidi.';
  final String part3 =
      'Telmidi is a platform that helps high school students to master their curriculum in an easy and interactive way, it\'s free and always will be free.';
  final String part4 =
      'If you are a graphic designer, consider joining us by emailing: telmidi.contact@gmail.com.';
  final String part5 =
      'All images and vector materials used in this software, are attributed to vecteezy.com and  flaticons.com ';
}
