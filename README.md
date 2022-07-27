
 **Today, What I learned  **
 ** 2022. 7. 27.**

 
//클로저 예시


let names: [String] = ["widen", "eric", "yagom", "reww"]


func backwards(first: String, second: String) ->Bool {
    return first > second
}
let reserced2: [String] = names.sorted(by: backwards)
print(reserced2)

// 아래는 위의 예시를 클로저로 변경한 표현

let reserved: [String] = names.sorted(by: {(first: String, second: String) -> Bool in
    return first > second
})
print(reserved)

//후행클로저 **
//문맥을 이용한 타입 유추 / 매개변수의 타입이 생략된 클로저

let reserved3: [String] = names.sorted {(first, second) in
    return first > second
    }

//단축인자 ($0, $1, $2, $3...)

let reserved4: [String] = names.sorted {
    return $0 > $1
}  //단축인자를 사용하면 매개변수 및 반환타입과 실행코드를 구분하기위해 사용했던 키워드 in을 사용할 필요도 없어짐.

//암시적 반환표현. 클로저가 반환값을 갖는 클로저이고, 클로저 내부의 실행문이 단 한 줄이라면 암시적으로 그 실행문을 반환값으로 사용 가능

let reserved5: [String] = names.sorted {$0 > $1}





//클로저를 이용한 연산 지연

var customersInLine: [String] = ["yongWha", "sungHun", "sang","haMi"]
print(customersInLine.count) //4

let customerProvider: () -> String = {
    return customersInLine.removeFirst()
}
print(customersInLine.count) //4
//실제로 클로저를 실행해야 연산을 실행함.

print("Now seriving \(customerProvider())!") // now serving is yongWhe!
print(customersInLine.count) //3
print("next serving is \(customerProvider())!") // next serving is sungHun
print(customersInLine.count)  //2

