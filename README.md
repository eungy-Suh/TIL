
 **Today, What I learned  **
 ** 2022. 7. 29.**

 protocol

 protocol Talkable {
    
    // 프로퍼티 요구
    //프로퍼티 요구는 항상 var 키워드를 사용함
    // get은 읽기만 가능해도 상관없다는 뜻이며, get 과 set을 모두 명시하면 읽기 쓰기 모두 가능한 프로퍼티여야함
    
    var topic: String { get set }
    var language: String { get }
    
    //메서드 요구
    func talk()
    
    //이니셜라니저 요구
    init(topic: String, language: String)
    
}

//프로토콜 채택 및 준수

//Person 구조체는 Talkable 프로토콜을 채택했습니다.
struct Person: Talkable {

    var topic: String
    var language: String
    
    //읽기 전용 프로퍼티 요구는 연산 프로퍼티로 대체가 가능함
    //var language: String { get { return "한국어"}}
    //물론 읽기, 쓰기 프로퍼티도 연산 프로퍼티로 대체할 수 있음.
  /*  var subject: String = " "
    var topic: String {
        set {
            self.subject = newValue
        }
        get {
            return self.subject
        }
    */
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다")
    }
    init(topic:String, language: String) {
        self.topic = topic
        self.language = language
    }
}


//프로토콜 상속

//프로토콜은 클래스와 다르게 다중상속이 가능

protocol Readable {
    func read()
}
protocol Writeable {
    func write()
}
protocol ReadSpeakable: Readable {
    func speak()
}
protocol ReadWriteSpeakable: Readable, Writeable {
    func speak()
}

struct Somtype: ReadWriteSpeakable {
    func read() {
        print("READ")
    }
    func write() {
        print("WRITE")
    }
    func speak() {
        print("Speak")
    }
}

//클래스 상속과 프로토콜
//클래스에서 상속과 트로토콜 채택을 동시에 하려면 상속받으려는 클래스를 먼저 명시하고
//그 뒤에 채택할 프로토콜 목록을 작성합니다.

class SuperClass: Readable {
    func read() {print("read")}
}

class SubClass: SuperClass, Writeable, ReadSpeakable {
func write() {print("write")}
func speak() {print("speak")}
} //순서 지키기


//프로토콜 준수 확인
//인스턴스가 특정 프로토콜을 준수하는지 확인
//is, as 연산자 사용

let sup: SuperClass = SuperClass()
let sub: SubClass = SubClass()

var someAny: Any = sup
someAny is Readable  //true
someAny is Writeable //false

someAny = sub
someAny is Readable //true
someAny is Writeable //true

someAny = sup

if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
}  //read

if let someReadSpeakable: ReadSpeakable = someAny as? ReadSpeakable {
    someReadSpeakable.speak()
}  //동작하지 않음


someAny = sub

if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
} //read
