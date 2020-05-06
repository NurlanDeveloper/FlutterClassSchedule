// Students Class

class Students{
  String studentName;
  String idNumber;
  String classMajor;
  String iconColor;

  Students({String name, String number, String major, String icon}){
    studentName = name;
    idNumber = number;
    classMajor = major;
    iconColor = icon;
  }
}

class ListStudents {

  List<Students> _studentList = [
    Students(name:'Ben Randall', number: 'C0427824', major: 'Software Development'),
    Students(name:'Chase Kuhn', number: 'C0992134', major: 'Software Development'),
    Students(name:'Anthony Gulliford', number: 'C0478291', major: 'Software Development'),
    Students(name:'Darth Vader', number: 'C0745327', major: 'Business Analytics'),
    Students(name:'Nurlan Umbetov', number: 'C0657325', major: 'Software Development'),
    Students(name: "Nghia Le", number: "C0397815", major: "SoftwareDevelopment"),
  ];

  String getName(index) {
    return _studentList[index].studentName;
  }

  String getId(index) {
    return _studentList[index].idNumber;
  }

  String getMajor(index) {
    return _studentList[index].classMajor;
  }
}