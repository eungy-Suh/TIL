
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

```
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return self % 2 == 1
    }
    
}

var number: Int = 3

print(number.isOdd)  //true
print(number.isEven)  //false

print(1.isEven) //false
print(2.isEven) //true
print(1.isOdd) //true
print(2.isOdd) //false
```