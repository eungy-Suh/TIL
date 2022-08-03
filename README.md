
 ** Today, What I learned  **
 ** 2022. 8.3.**

---
## **익스텐션**

구조체, 클래스, 열거형, 프로토콜 타입에 새로운 기능을 추가할 수 있음.
추가할 수 있는 기능 :

- 연산 타입 프로퍼티 / 연산 인스턴스 프로퍼티

- 타입 메서드, 인스턴스 메서드

- 이니셜라이저

- 서브스크립트

- 중첩타입

- 특정 프로토콜을 준수할 수 있도록 기능 추가

+ 익스텐션은 타입에 새로운 기능을 추가할 수는 있지만, 기존에 존재하는 기능을 재정의할 수는 없음.

클래스의 상속 vs 익스텐션

- 클래스의 상속은 클래스 타입에서만 가능하지만 익스텐션은 구조체, 클래스, 프로토콜 모든 타입에 적용이 가능함.

- 클래스의 상속은 특정 타입을 물려받아 하나의 새로운 타입을 정의하고 추가 기능을 구현하는 수직 확장이지만, 익스텐션은 기존의 타입에 기능을 수편 확장 함.

- 상속을 받으면 기존 기능을 재정의할 수 있지만, 익스텐션은 재정의할 수 없다는 것도 큰 차이.

익스텐션을 통해 타입에 연산 프로퍼티를 추가할 수 있음. 저장 프로퍼티는 추가할 수 없음.
``` swift
extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
    
    mutating func multiplySelf(by n: Int) {
        self = self.multiply(by: n)
    }
    static func isIntTypeInstance(_ instance: Any) -> Bool {
        return instance is Int
    }
}

print(3.multiply(by: 2))  //6
print(4.multiply(by: 5)) //20

var number2: Int = 3

number2.multiplySelf(by: 2)
print(number2) //6

number2.multiplySelf(by: 3)
print(number2) //18

Int.isIntTypeInstance(number2) //true
Int.isIntTypeInstance(3) //true
Int.isIntTypeInstance(3.0) //false
Int.isIntTypeInstance("3") //false 

```

  **이니셜라이저**

인스턴스 초기화(이니셜라이즈)할 때 인스턴스 초기화에 필요한 다양한 데이터를 전달받을 수 있도록 여러종류의 이니셜라이저를 만들 수 이씀.
타입의 정의 부분에 이니셜라이저를 추가하지 않더라도 인스텐션을 통해 추가할 수 있음.

하지만 익스텐션으로 클래스 타입에 편의 이니셜라이저는 추가할 수 있지만, 지정 이니셜라이저는 추가할 수 없음. 지정 이니셜라이저와 다이니셜라이저는 반드시 클래스 타입의 구현부에 위치해야 함.
``` swift
extension String {
    init(intTypeNumber: Int){
        self = "\(intTypeNumber)"
    }
    
    init(doubleTypeNumver: Double){
        self = "\(doubleTypeNumver)"
    }
}

let stringfromInt: String = String(intTypeNumber: 100)  //100
let stringFromDouble: String = String(doubleTypeNumver: 100.0) //100.0

class Person {
    var name: String
    init(name: String){
        self.name = name
    }
}

extension Person {
    convenience init() {
        self.init(name: "unKnown")
    }
}

let someOne: Person = Person()
print(someOne.name)  // unKnown