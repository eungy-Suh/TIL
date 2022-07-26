
 **Today, What I learned  **
 ** 2022. 7. 26.**

 ---
UIKit
 
---
 ##label
---
class ViewController: UIViewController {
    
 let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(label)
        label.text = "서은지"
//가운데로 이동하기
        let height : CGFloat = 100
        let width : CGFloat = 100
        label.frame = CGRect(x: view.frame.midX - width / 2,
                            y: view.frame.midY - height / 2,
                             width: width, height: height)
        
        //label.backgroundColor = .red
        label.textAlignment = .center //글자가 frame 가운데로 이동
    }
---

##button
---
}class ViewController: UIViewController {

let button = UIButton(type: .system)
    
override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(button)
    button.setTitle("버튼", for:.normal)
//탭했을때 출력가능하게 만들기 
    button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    
//버튼 가운데로
    let width: CGFloat = 200
    let height: CGFloat = 100
        button.frame = CGRect(x: view.frame.midX - width / 2,
                              y:view.frame.midY - height / 2,
                                 width: width,
                                 height: height)

    }
    @objc
    func didTapButton(_ sender: UIButton) {
        print("Button Tapped")
    }
    
}
