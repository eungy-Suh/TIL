
 ** Today, What I learned  **
 ** 2022. 7. 30.**

---
1. 함수와 메서드
  - 함수와 메서드는 기본적으로 같음. 상황이나 위치에 따라 다른 용어로 부르는 것 뿐임.

구조체, 클래스, 열거형 등 특정타입에 연관되어 사용하는 함수를 **메서드**

모듈 전체에서 전역적으로 사용할 수 있는 함수를 그냥 **함수**라고 부름.
함수에서는 소괄호()를 생락할 수 없음.

let introduceJenny: String = introduce(name: "jenny")
print(introduceJenny)
//Hello jenny!

2. 매개변수는 함수를 정의할 때 외부로부터 받아들이는 전달 값의 이름. 전달인자 혹은 인자는 함수를 실제로 호출할때 전달하는 값을 의미. 
위에서 hello(name: ) 함수에서 매개변수는 name이고, 실제 전달받는 값인 “jenny”가 전달인자임.

##tip 
스위프트에서 기본적으로 사용하는 키워드 대부분은 매개변수 이름으로 사용할 수 없음.

하지만, 이름을 지정해줄 떄 강세표 '로 이름을 감싸주면 대부분의 키워드를 이름으로 사용가능. ex) 'var’