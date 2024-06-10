import 'dart:convert';


class Student {
   int? id;
   String? name;
   String? course;

   Student({required this.id,required this.name,required this.course});

  factory Student.fromrow(Map<String,dynamic>data)
  {
    return Student(id: data['id'], name: data['name'], course: data['course']);
  }
}

void main()
{
  List<Map<String,dynamic>> StudentData =[
    {
        'id':1,
        'name':"krishna",
        'course':"flutter",
      },
      {
        'id':2,
        'name':"utsavi",
        'course':"flutter",
      },
      {
        'id':3,
        'name':"devangi",
        'course':"flutter",
      },
      {
        'id':4,
        'name':"mansi",
        'course':"flutter",
      },
      {
        'id':5,
        'name':"gracy",
        'course':"flutter",
      },
      {
        'id':6,
        'name':"krina",
        'course':"flutter",
      },
      {
        'id':7,
        'name':"hetvi",
        'course':"flutter",
      },
      {
        'id':8,
        'name':"dhruvi",
        'course':"flutter",
      },
      {
        'id':9,
        'name':"yash",
        'course':"flutter",
      },
      {
        'id':10,
        'name':"mohit",
        'course':"flutter",
      },
      {
        'id':11,
        'name':"manav",
        'course':"flutter",
      },
      {
        'id':12,
        'name':"bhavik",
        'course':"flutter",
      },
      {
        'id':13,
        'name':"bhavya",
        'course':"flutter",
      },
      {
        'id':14,
        'name':"harsh",
        'course':"flutter",
      },
      {
        'id':15,
        'name':"parth",
        'course':"flutter",
      },
      {
        'id':16,
        'name':"mayuri",
        'course':"flutter",
      },
      {
        'id':17,
        'name':"bhumi",
        'course':"flutter",
      },
      {
        'id':18,
        'name':"jalpa",
        'course':"flutter",
      },
      {
        'id':19,
        'name':"jay",
        'course':"flutter",
      },
      {
        'id':20,
        'name':"foram",
        'course':"flutter",
      },
      {
        'id':21,
        'name':"janvi",
        'course':"flutter",
      },
      {
        'id':22,
        'name':"riya",
        'course':"flutter",
      },
      {
        'id':23,
        'name':"margi",
        'course':"flutter",
      },
      {
        'id':24,
        'name':"rinkle",
        'course':"flutter",
      },
      {
        'id':25,
        'name':"krucy",
        'course':"flutter",
      },
      {
        'id':26,
        'name':"ansh",
        'course':"flutter",
      },
      {
        'id':27,
        'name':"rucha",
        'course':"flutter",
      },
      {
        'id':28,
        'name':"pari",
        'course':"flutter",
      },
      {
        'id':29,
        'name':"happy",
        'course':"flutter",
      },
      {
        'id':30,
        'name':"diya",
        'course':"flutter",
      },
    ];  
  List<Student> allStudent =[];

  StudentData.forEach((Map<String,dynamic>data) 
  {
    allStudent.add(Student.fromrow(data));
   });

   allStudent.forEach((Student data) {
    print("Roll No : ${data.id}");
     print("Name :${data.name}"); 
     print("Course :${data.course}");
    });
   
}