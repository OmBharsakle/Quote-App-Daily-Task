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

<h1></h1>

<h3 align="center">Dialog Box</h3>

<h1></h1>

<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/Quote-App-Daily-Task/assets/149371245/c9015ef2-f6f1-47ac-9f89-d5b6d9199626"/>
  <img height="550" src="https://github.com/OmBharsakle/Quote-App-Daily-Task/assets/149371245/0649189a-fb24-4c5d-9f57-9d6d963fc2c7"/>

https://github.com/OmBharsakle/Quote-App-Daily-Task/assets/149371245/aacc286a-cbe2-4f74-bd64-d4ee8b6d2631


</div> 

<h1></h1>

<h3 align="center">Quotes App</h3>

<h1></h1>

<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/Quote-App-Daily-Task/assets/149371245/37531567-16ec-4c70-8f00-090229e41b78"/>
  <img height="550" src="https://github.com/OmBharsakle/Quote-App-Daily-Task/assets/149371245/b3df25dd-b5c8-4d01-a241-2b303a547046"/>

 

https://github.com/OmBharsakle/Quote-App-Daily-Task/assets/149371245/66adf6f0-a06d-49a3-afee-18daa651dae5



</div> 

<h1></h1>

<h3 align="center">Listview to Gridview Toggle View</h3>

<h1></h1>

<div align="center">
  <img height="550" src="https://github.com/OmBharsakle/Quote-App-Daily-Task/assets/149371245/338795f0-d765-4d7f-a4b7-ddf3174ff730"/>
  <img height="550" src="https://github.com/OmBharsakle/Quote-App-Daily-Task/assets/149371245/97449a2d-a7fc-47c5-8c23-ae59a4e440a3"/>


https://github.com/OmBharsakle/Quote-App-Daily-Task/assets/149371245/f3f18484-6e5f-4412-8216-b001a13cf338




</div> 
