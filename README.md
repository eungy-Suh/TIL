
 ** Today, What I learned  **
 ** 2022. 9.17.**

---
## if-let Unwapping
``` swift
struct Student {
let firstName: String
    let lastName: String
    let middleName: String?
    let grade: String?
{

let student = 
Student(firstName: "John", lastName: "Doe", middleName: "Smith", grade: "A")
 //Student(firstName: "John", lastName: "Doe", middleName: Optional("Smith"), grade: Optional("A"))
```
middleName, grade 에 옵셔널이 씌어진 값이 나오는걸 볼수 있다.
이 옵셔널을 if-let을 이용해서 풀어서 값을 내보내보자.
``` swift

        if let middleName = middleName {
            studentDescription += "\(middleName)"
        }
        //John Smithß
```