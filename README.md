
 ** Today, What I learned  **
 ** 2022. 8.7-2.**

---
## durationOpenAviewController

ARC: 자동 참조 카운팅.

 + 참조를 카운팅 하는이유: 메모리 관리를 위함.

 + 메모리관리를 자동으로 하는이유는 → 오류를 적게 하기위해서.

++ ARC: 효과적으로 메모리 관리를 할 수 있게 해주는 도구.

**+ 메모리 관리를 수행하는 이유는 무엇일까?**

앱의 성능을 유지하기 위해서는 메모리 관리가 기본인데,

메모리라고 하면 크게 스택 영역,  힙 영역 등이 있다.

이 중 스택 메모리에 저장된 데이터는 value 타입으로, 특별한 관리가 없어도 괜찮다. (자동으로 제거됨)

그러나 힙 메모리에 저장된 데이터는 reference 타입이므로, 개발자가 동적으로 관리해주어야한다.

(참조 타입의 경우 인스턴스가 참조를 통해 여러 곳에서 접근하므로 언제 메모리가 해제되는지 매우 중요!

적절한 시점에 해제되지 않으면 한정적인 메모리 자원을 낭비하게 되고, 성능 저하로 이어지기 때문이다.)

👉 따라서 힙에 저장된 데이터를 관리할 도구가 필요하고,

효과적인 메모리 관리를 수행하기 위해 ARC를 이용하는 것이다

## ⭐️ ****MRC -> ARC****

- *MRC는 예전에 Objective-C에서 사용하던 수동 메모리 관리 도구이다.*

**1) MRC**는 **Manual Reference Counting**의 약자로,

개발자가 직접 retain과 release를 호출하며 메모리를 관리하는 코드를 작성해야한다.

따라서 코드 양이 많아지고, 메모리 오류 가능성이 높아지게 되어 프로그램 안정성이 낮아진다.

**2) ARC**에 의해 이러한 문제를 극복할 수 있게 되었다. ARC는 Xcode4와 함께 등장했는데,

**Auto Reference Counting**이라는 이름에 걸맞게 컴파일러가 자동으로 메모리 관리 코드를 넣어준다.

따라서 코드도 훨씬 짧아지고, 자연스럽게 프로그램의 안정성을 높일 수 있게 되었다.

## ⭐️ ****retain, release****

- **retain**

객체의 reference count(retain count)를 증가시킨다.

객체가 메모리에서 해제되지 않도록 이 함수를 호출하여 카운트를 증가시키는것.!

- **release**

객체의 reference count(retain count)를 감소시킨다.

객체를 더이상 필요로 하지 않을 때 이 함수를 호출하여 카운트를 감소시키는 것.!

이렇게 ARC는 retain, release의 호출을 통해 메모리 관리를 수행하는 것이고,

이러한 메모리 관리 방법을 ***Reference Counting(Retain Counting)***이라고 한다.💥
``` swift
import Foundation

class ARC_Example {
    let message: String
    init(message: String) {
        self.message = message
        print("\(message) is being initialized")
    }
    deinit {
        print("\(message) is being deinitialized")
    }
}

// ARC_Example 클래스 타입을 갖는 레퍼런스 변수 2개 A, B
var A: ARC_Example?
var B: ARC_Example?

A = ARC_Example(message: "ARC 동작 코드")
// Prints "ARC 동작 코드 is being initialized"
B = A

A = nil
B = nil
```

ARC_Example 이라는 클래스를 하나 선언했고,

클래스의 인스턴스가 생성될 때와 해제될 때 print로 로그를 찍게 구현했다.

ARC_Example 클래스 타입을 갖는 레퍼런스 변수로 각각 A, B를 선언했고,

A에 ARC_Example 인스턴스를 참조하도록 한 후 B가 A를 참조하게 했다.

=> A, B 모두 ARC_Example 인스턴스를 참조하게 되고,

ARC_Example 인스턴스에 대한 레퍼런스 카운트는 2가 된다.

그리고 차례대로 참조를 해제하는데,

먼저 A에 nil을 할당하여 참조를 해제했다. 레퍼런스 카운트는 2에서 1을 감소시켜서 1이 된다.

그 다음으로 B의 참조를 해제했는데 이 때 레퍼런스 카운트는 0이 되어

ARC는 ARC_Example 클래스 인스턴스는 deinit 메서드가 호출, 소멸된다.

(클래스 인스턴스가 더이상 참조할 필요가 없어져 메모리에서 해제되는 과정을 소멸이라고 한다.

클래스 내부에 deinit 메서드를 구현해주면 소멸되기 직전 deinit 메서드가 호출된다.

디이니셜라이저는 클래스당 하나만 구현 가능하며 매개변수와 반환값을 가지지 않는다.)