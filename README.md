
 ** Today, What I learned  **
 ** 2022. 8.8.**

---
# stackView ##

``` swift
@MainActor class UIStackView : UIView
```
## Configuring the layout

+ Stack View를 사용하면 직접 조건을 설정하는 것보다 훨씬 쉽고 빠르게 레이아웃을 잡을 수 있다.
+ 레이아웃을 잡을 때는, 무조건 Stack View부터 쓴다. Stack View로 해결할 수 없을 때만, 직접 조건(Constraints)을 설정한다.
+ Stack View는 설정값에 따라 조건들을 자동으로 생성/변경한다.
+ 하위 뷰 사이 여백을 결정하는 Spacing, 하위 뷰의 크기 배분을 결정하는 Distribution, 하위 뷰의 위치 정렬을 결정하는 Alignment이 있다.
+ 각 설정시 만들어지는 조건들을 잘 알아두면, 오토레이아웃 에러를 해결하고 의도한 레이아웃을 잡는 데 큰 도움이 된다.

Stack View의 핵심 프로퍼티는 4가지가 있다.

하나는 가로 스택 뷰인지, 세로 스택 뷰인지를 결정하는 Axis다.
``` swift
// Toggle between a vertical and horizontal stack.
if stackView.axis == .Horizontal {
    stackView.axis = .Vertical
}
else {
    stackView.axis = .Horizontal
}
```
그 외에 하위 뷰 사이 여백을 결정하는 Spacing,
하위 뷰의 크기 배분을 결정하는 Distribution,
하위 뷰의 위치 정렬을 결정하는 Alignment이 있다.
``` swift
var axis: NSLayoutConstraint.Axis
정렬된 뷰가 배치되는 축입니다.
var alignment: UIStackView.Alignment
스택 뷰의 위치 정렬
var distribution: UIStackView.Distribution
스택 뷰의 크기 배분
var spacing: CGFloat
스택 보기의 정렬된 보기에서 인접한 가장자리 사이의 거리(포인트 단위).
var isBaselineRelativeArrangement: Bool
뷰 사이의 수직 간격이 기준선에서 측정되는지 여부를 결정하는 부울 값.
var isLayoutMarginsRelativeArrangement: Bool
스택 뷰가 레이아웃 여백을 기준으로 정렬된 뷰를 배치할지 여부를 결정하는 부울 값.
```
