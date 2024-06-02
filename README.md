<h1 align='center'>Quote-App-Daily-Task</h1>

<h3 align='center'>17.1 Factory Constructor & Modal Class.</h3>
<H2></H2>

- In this example below, factory constructor is used to validate the input. If the input is valid, it will return a new class instance. If the input is invalid, then it will throw an exception.


##  Factory Constructor & Modal Class

#### • List Of Map
```bash
List StudentsList=[
  {
    'rollno':1,
    'name':'Om Bharsakle',
    'course':'Full Stack Development',
  },
  {
    'rollno':2,
    'name':'Ankit Patil',
    'course':'Flutter Developer',
  },
  {
    'rollno':3,
    'name':'Tushar Patil',
    'course':'Graphic Designer',
  },
]
```
#### • Empty List
```bash
List StudentsClass=[];
```

#### • Main Funtion And Printing Work
```bash
import 'factory.dart';
void main()
{
  int i;
  for(i=0; i<StudentsList.length;i++)
  {
    StudentsModel s1= StudentsModel.fromStudents(Students: StudentsList[i]);
    StudentsClass.add(s1);
  }
  for(i=0;i<StudentsClass.length;i++)
  {
    print("Roll No : ${StudentsClass[i].rollno}");
    print("Name : ${StudentsClass[i].name}");
    print("Course : ${StudentsClass[i].course}\n");
  }
}
```

#### • Parent Class
```bash
class Students
{
  late String name;
  late int rollno;
  late String course;
  Students({required this.name,required this.course,required this.rollno});
}
```

#### • Factory/Modal Class 

```bash
file -> factory.dart
class StudentsModel
{
  String? name,course;
  int? rollno;
  StudentsModel({required this.name, required this.course,required this.rollno});
  factory StudentsModel.fromStudents({required Map Students})
  {
    return StudentsModel(name: Students['name'],course: Students['course'],rollno: Students['rollno']);
  }
}
```
