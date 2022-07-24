
 **Today, What I learned  **
 ** 2022. 7. 24.**

 ---

6.3 구문이름표
var numbers: [Int] = [4, 123, 456, 7890]

numberLoop: for num in numbers{
    if num > 5 || num < 1 {
        continue numberLoop
}

    var count: Int = 0
printLoop: while true {
    print(num)
    count += 1
    if count == num {
        break printLoop
    }
}

    removeLoop : while true {
        if numbers.first != num {
            break numberLoop
        }
    }
}
 함수와 메서드
 
 함수와 메서드는 기본적으로 같음. 상황이나 위치에 따라 다른용어로 부르는 것 뿐임.
 구조체, 클래스, 열거형 등 특정 타입에 연관되어 사용하는 함수를 메서드.
 모듈 전체에서 전역적으로 사용할 수 있는함수를 그냥 함수.
 함수가 위치하거나 사용되는 범위 등에 따라 호칭이 달라질 뿐, 함수라는것임.

func hello(name: String) -> String{
    return "hello \(name)"
}

let sayHo : String = hello(name: "eungy")
print(sayHo)

func introduce(name:String) -> String {
    "제 이름은" + name + "입니다"
}

let sayEungy : String = introduce(name: "eungy")
print(sayEungy)


func sayHello(_ name: String, _ times: Int) ->String {
    var result: String = " "
    
    for i in 0..<times {
        result += "hello \(name)"
    }
    return result
}

print(sayHello("cepre ", 3))



struct BasicInformation {
    var name : String
    var age : Int
}

var yagomInfo : BasicInformation = BasicInformation(name: "yagom", age: 99)
yagomInfo.age = 100

var friendInfo : BasicInformation = yagomInfo

print("yagom`s age : \(yagomInfo.age)")
print("friend`s age : \(friendInfo.age)")


struct BasicAgain {
var name : String
var age : Int
}

var herName : BasicAgain = BasicAgain(name: "eungy", age: 55)

herName.age = 32

var himName : BasicAgain = herName

print(herName.age)
print(himName.age)


class Person{
    var height : Float = 0.0
    var weight : Float = 0.0
}

var yagomInfo: Person = Person()
var friendInfo: Person = yagomInfo

print(yagomInfo.height)
print(friendInfo.height)

yagomInfo.height = 123.4

print(yagomInfo.height)
print(friendInfo.height)

func changeBasicInfo(_ info: BasicInformation) {
    var copiedInfo: BasicInformation = info
    copiedInfo.age = 1
    
}
func changePersonInfo(_ info: Person){
    info.height = 144.2
}
changeBasicInfo(yagomInfo)

print(yagomInfo)

changePersonInfo(yagom)
