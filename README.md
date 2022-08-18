
 ** Today, What I learned  **
 ** 2022. 8.18.**

---
## ARC

### ARC: 자동으로 메모리를 관리해주는 방식.

  - ARC가 관리해주는 참조횟수계산은 참조타입인 **클래스의 인스턴스**에만 적용됨. 구조체나 열거형은 값타입이므로 참조 횟수 계산과는 무관. 즉 구조체나 열거형은 다른 곳에서 참조하지 않기 때문에 ARC로 관리할 필요가 없음.

#### 강한참조(String Reference) : 인스턴스가 계속해서 메모리에 남아있어야 하는 명분을 만들어 주는 것.

- 인스턴스는 참조 횟수가 0이 되는 순간 메모리에서 해제되는데, 인스턴스를 다른 인스턴스의 프로퍼티나 변수, 상수 등에 할당할 때 강한참조를 사용하면 참조 횟수가 1 증가함. 또, 강한참조를 사용하는 프포퍼티, 변수, 상수 등에 nil을 할당해주면 원래 자신에게 할당되어 있던 인스턴스의 참조 횟수가 1 감소함.

``` swift
//강한참조의 참조 횟수 확인
   
   class Person {
       let name: String
       
       init(name: String) {
           self.name = name
           print("\(name) is being initialized")
       }
       
       deinit{
           print("\(name) is being deinitialized")
       }
   }
var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "yagom")
//yagom is being initialized
//인스턴스의 참조 횟수 : 1

reference2 = reference1 // 인스턴스의 참조 횟수: 2
reference3 = reference1 //인스턴스의 참조 횟수: 3


reference3 = nil //인스턴스의 참조 횟수: 2
reference2 = nil //인스턴스의 참조 횟수: 1
reference1 = nil //인스턴스의 참조 횟수: 0
//yagom is being deinitialized
```

순환문제
``` swift
var yagom: Person? = Person(name: "yagom")  //Person 인스턴스의 참조 횟수: 1
var room: Room? = Room(number: "505") //Room 인스턴스의 참조 횟수: 1


room?.host = yagom  //Person 인스턴스의 참조 횟수: 2
yagom?.room = room  //Room 인스턴스의 참조 횟수: 2

yagom = nil  //Person 인스턴스의 참조 횟수: 1
room = nil  //Room 인스턴스의 참조 횟수: 1

//Person 인스턴스를 참조할 방법 상실 - 메모리에 잔존
//Room 인스턴스의 참조할 방법 상실 - 메모리에 잔존
```
 순환 문제를 수동으로 해결
 ``` swift
var yagom: Person? = Person(name: "yagom")  //Person 인스턴스의 참조 횟수: 1
var room: Room? = Room(number: "505") //Room 인스턴스의 참조 횟수: 1


room?.host = yagom  //Person 인스턴스의 참조 횟수: 2
yagom?.room = room  //Room 인스턴스의 참조 횟수: 2

yagom?.room = nil  //Person 인스턴스의 참조 횟수: 1
yagom = nil  //Room 인스턴스의 참조 횟수: 1

room?.host = nil
//yagom is being deinitialized

room = nil
//Room 505 is being deinitialized
```

출처: 야곰swift