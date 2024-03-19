class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printStudentInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacherInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

class School {
  Student student;
  Teacher teacher;

  School(this.student, this.teacher);

  void printInfo() {
    student.printStudentInfo();
    teacher.printTeacherInfo();
  }
}

void main() {
  Student student = Student('John Doe', 18, 12);
  Teacher teacher = Teacher('Jane Smith', 35, 'Math');
  School school = School(student, teacher);
  school.printInfo();
}