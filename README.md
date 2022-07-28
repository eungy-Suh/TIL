
 **Today, What I learned  **
 ** 2022. 7. 28.**


상속

- 편의 이니셜라이저 자동상속

class Person {
    var name: String
    
    init(name: String){
    self.name = name
}
    convenience init() {
        self.init(name: "unknown")
    }
}
class Student: Person {
    var major: String
    
    convenience init(major: String) {
        self.init()
        self.major = major
    }
    override convenience init(name: String) {
        self.init(name: name, major: "unknown")
    }
    init(name: String, major: String) {
        self.major = major
        super.init(name: name)
    }
}

let widen: Person = Person()
let jin: Student = Student(major: "Swift")
print(widen.name)  //unknown
print(jin.major) //swift


class UniversityStudent: Student {
    var grade: String = "A+"
    var description: String {
        return "\(self.name), \(self.major), \(self.grade)"
    }
    
    convenience init(name: String, major: String, grade: String) {
        self.init(name: name, major: major)
        self.grade = grade
        
    }
}

let nova: UniversityStudent = UniversityStudent()
print(nova.description)  //unknown, unknown, A+

let jun: UniversityStudent = UniversityStudent(name: "jun")
print(jun.description)  //jun, unknown, A+

let joker: UniversityStudent = UniversityStudent(name: "joker", major: "Swift", grade: "C")
print(joker.description) //joker, Swift, C