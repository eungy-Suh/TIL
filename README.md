
 ** Today, What I learned  **
 ** 2022. 8.12.**

---
## NumberFormatter ##

세 자리수 마다 콤마(,) 넣기
``` swift
let numberFormatter = NumberFormatter()
numberFormatter.numberStyle = .decimal

let price = 10005000
let result = numberFormatter.string(from: NSNumber(value:price))!
print(result) // "10,005,000"
```

decimal로 스타일 지정하여 콤마를 넣을 수 있다.
maximumFractionDigits로 최대 소수점 자리수를 지정할 수 있다. 
(기본은 세자리)
numerFormatter로 처리된 값은 optional로 반환되기 때문에 옵셔널 바인딩이 필요하다.