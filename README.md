
 ** Today, What I learned  **
 ** 2022. 9.12.**

---
## Zip
```
let students = ["Alex", "Mary", "John", "Steven"]
let grades = [3.4, 2.8]

let pair = zip(students, grades)

for studentAndGrade in pair {
    print(studentAndGrade.0)
    print(studentAndGrade.1)
}
//Alex
//3.4
//Mary
//2.8

//짝이 맞지 않으면 도출되지 않음.
```