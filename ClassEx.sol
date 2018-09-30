pragma solidity ^0.4.24;

contract Human {
 string name;
 int age;
 
 event logStringHuman(string);
 event logStringSleepHuman(string);
 /*
 function Human(){
     logStringHuman("In Human constructor");
 }
 */
 
 function Human(string _name, int _age){
     logStringHuman("In Human constructor 2 argument");
     name = _name;
     age = _age;
 }
 
 function getName() returns (string){
     return name;
 }
 function setName(string _name){
     name = _name;
 }
 function getAge() returns (int){
     return age;
 }
 function setAge(int _age){
     age = _age;
 }  
 
 function sleep() public {
     logStringSleepHuman("Sleep constructor");
 }
}

/*contract Sleeping is Human {
    
    function Sleeping(string _name, int _age, string _isSleeping) Human(_name,_age) {
        
        string sleepState;
        logStringSleep("In Student constructor");
        course = _course;
        
    }
    
    function getSleep() returns (string){
        return course;
    }
    
    function setCourse(string _course){
        course = _course;
    }
    
} */

contract Student is Human {
    string course;
    
    event logStringStudent(string);
    event logStudentStringSleep(string);
    function Student(string _name, int _age,string _course) Human(_name,_age) {
        logStringStudent("In Student constructor");
        course = _course;
        
    }
    
    function getCourse() returns (string){
        return course;
    }
    
    function setCourse(string _course){
        course = _course;
    }
    function sleep() public {
     logStudentStringSleep("In Student Sleep constructor");
 }
    
}


contract Client {
    
    event logString(string);
    event logInt(int);
    
    function testObjects(){
        
        /*
        Human h = new Human("Jawad",25);
        int age = h.getAge();
        string memory name = h.getName();
        logString(name);
        logInt(age);
        */
        
        Student s = new Student("Lakhani",16,"Blockchain");
        //s.setName("Lakhani");
        Human st = new Student("jawad", 20, "BC");
        logString(s.getName());
        logInt(s.getAge());
        logString(s.getCourse());
        st.sleep();
    }
}
