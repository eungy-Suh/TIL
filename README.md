
 ** Today, What I learned  **
 ** 2022. 8.5.**

---
## UIStepper
``` swift
let stepper = UIStepper()

view.addSubview(stepper)

let stepperWidth = stepper.frame.width
        stepper.frame.origin = CGPoint(x: view.frame.midX - stepperWidth / 2,
                                       y: view.frame.midY - 100)
        stepper.addTarget(self, action: #selector(didTapStepper(_:)), for: .valueChanged)


@objc
    func didTapStepper(_ sender: UIStepper){
				textField.text = String(sender.value) // 텍스트필드 내에 표시할 수 있음.
        print(sender.value)


##처음 페이지 설정

guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        window?.backgroundColor = .systemBackground
        window?.makeKeyAndVisible()