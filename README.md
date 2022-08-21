
 ** Today, What I learned  **
 ** 2022. 8.21.**

---
## Tuple 복습

튜플 기본
``` swift
//String, Int, Double 타입을 갖는 튜플
var person: (String, Int, Double) = ("yagom", 100, 123.4)

//인덱스를 통해서 값을 빼 오자
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")
//이름: yagom, 나이: 100, 신장: 123.4

person.1 = 99
person.2 = 333.4

print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")
//이름: yagom, 나이: 99, 신장: 333.4
```

튜플 이름 지정
```swift
//String, Int, Double 타입을 갖는 튜플
var person: (name: String, age: Int, height: Double) = ("yagom", 100, 123.4)

//요소 이름을 통해서 값을 때 올 수 있음.
print("이름: \(person.name), 나이: \(person.age), 신장: \(person.height)")
//이름: yagom, 나이: 100, 신장: 123.4

person.age = 99 // 요소 이름을 통해 값을 할당할 수 있음.
person.2 = 333.4 //인덱스를 통해서도 값을 할당할 수 있음.

print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")
//기존 인덱스 사용 가능.
```