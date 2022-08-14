
 ** Today, What I learned  **
 ** 2022. 8.14.**

---
## ViewController LifeCycle ##

ViewDidLoad
이건 뷰 컨트롤러를 만들 때 한 번만 호출합니다.

ViewWillAppear만들어진 뷰 컨트롤러가 뷰 계층 구조에 추가되기 직전에 호출됩니다.
즉 이름 그대로 뷰가 곧 보일 때 호출되는 메서드입니다.

ViewDidAppear만들어진 뷰 컨트롤러가 뷰 계층 구조에 추가된 직후에 호출됩니다.
이름 그대로 뷰가 보여진 뒤 호출되는 메서드입니다.

ViewWillDisappear뷰 컨트롤러가 뷰 계층 구조에서 사라지기 직전에 호출됩니다.
뷰가 사라지기 직전에 호출되는 메서드입니다.

ViewDidDisappear뷰 컨트롤러가 뷰 계층 구조에서 사라진 직후 호출됩니다.
뷰가 사라진 직후에 호출되는 메서드입니다.
###