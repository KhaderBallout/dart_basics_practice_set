import 'student.dart';

void main() {
  List<Student> students = [];
  Student student1 = Student(name: "Khader", grade: 90.5);
  Student student2 = Student(name: "Ahmad", grade: 85.0);
  Student student3 = Student(name: "Qais", grade: 95.0);
  Student student4 = Student(name: "George", grade: 55.0);

  students.add(student1);
  students.add(student2);
  students.add(student3);
  students.add(student4);

  print("=======================================");
  print("Student info before updating");
  for (var student in students) {
    print(student.toString());
  }

  print("=======================================");
  print("Student info after updating");
  // students.add(Student.fake());

  student1.email = 'Khader@gamil.com' ;
  student1.address ='Bethlehem';
  student1.phone = '056999999';

  student2.email = 'Ahmad@gamil.com';
  student2.address = 'Cairo';
  student2.phone = '057999999';

  student3.email = 'Qais@gamil.com';
  student3.address = 'Rammallah';
  student3.phone = '058999999';

  student4.email = 'Geroge@gamil.com';

  for (Student student in students) {
    print(student.toString());
  }

  print("=======================================");

  print("Students with grade greater 90:");
  searchStudents(students, 90, true);

  print("=======================================");

  print("Students with grade less 90:");
  searchStudents(students, 90, false);

  print("=======================================");
  print("Students information that they passed");

  for (Student student in students) {
    if(student.isPassed()){
      print(student.toString());
    }
  }

  print("=======================================");
  sortStudentsByGrade(students);

}

void searchStudents(List<Student> studentList, double gradeValue, bool isGreater) {
  for (Student student in studentList) {
    if (isGreater && student.grade > gradeValue) {
      print("Student ${student.name} grade is ${student.grade} and it's greater than $gradeValue");
    } else if (!isGreater && student.grade < gradeValue) {
      print("Student ${student.name} grade is ${student.grade} it's less than $gradeValue");
    }
  }
}

// https://www.youtube.com/watch?v=6-j5mF792M4&t=259s
void sortStudentsByGrade(List<Student> students) {
  students.sort((a, b) => b.grade.compareTo(a.grade));

  print("Students sorted by their grade (Descending):");
  for (Student student in students) {
    print(student.toString());
  }
}