// Courses Class

class Courses{
  String className;
  String classCode;
  String classDescription;
  int classSize;
  int classMaxSize;

  Courses({String name, String code, String desc, int size, int max}){
    className = name;
    classCode = code;
    classDescription = desc;
    classSize = size;
    classMaxSize = max;
  }
}

class ListCourses {

  List<Courses> _courseList = [
    Courses(name:'Introduction to Informatics', code: 'SDEV 143', desc: 'This is a description', size: 0, max: 20),
    Courses(name:'Computing Logic', code: 'SDEV 134', desc: 'This is a description', size: 0, max: 20),
    Courses(name:'Client-Side Scripting', code: 'SDEV 253', desc: 'This is a description', size: 0, max: 20),
    Courses(name:'Application Development', code: 'SDEV 264', desc: 'This is a description', size: 0, max: 20),
    Courses(name:'Java Development', code: 'SDEV 200', desc: 'This is a description', size: 0, max: 20),
    Courses(name:'Python Development', code: 'SDEV 203', desc: 'This is a description', size: 0, max: 20),
    Courses(name:'C# Development', code: 'SDEV 204', desc: 'This is a description', size: 0, max: 20),
    Courses(name:'C++ Development', code: 'SDEV 202', desc: 'This is a description', size: 0, max: 20),
  ];

  String getCourse(index) {
    return _courseList[index].className;
  }

  String getCode(index) {
    return _courseList[index].classCode;
  }

  String getDesc(index) {
    return _courseList[index].classDescription;
  }

  int getSize(index) {
    return _courseList[index].classSize;
  }

  int getMax(index) {
    return _courseList[index].classMaxSize;
  }

}