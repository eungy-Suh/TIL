
 ** Today, What I learned  **
 ** 2022. 8.15.**

---
## 구분선
```swift
let divierView = UIView()

extension LoginView {
    func style() {
divierView.translatesAutoresizingMaskIntoConstraints = false
divierView.backgroundColor = .secondarySystemFill
}

func layout() {
        stackView.addArrangedSubview(usernameTextField)
        stackView.addArrangedSubview(divierView) // 구분선. 둘 사이에.
        stackView.addArrangedSubview(passwordTextField)

divierView.heightAnchor.constraint(equalToConstant: 1).isActive = true
--> NSLayoutConstraint.activate([ ]) 밖에 적기.