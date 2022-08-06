
 ** Today, What I learned  **
 ** 2022. 8.6.**

---
## errorMessageLabel

```swift
 class LoginViewController: UIViewController {

let errorMessageLabel = UILabel()

view.addSubview(errorMessageLabel)

extension LoginViewController {
    private func style() {

				errorMessageLabel.translatesAutoresizingMaskIntoConstraints = false
        errorMessageLabel.textAlignment = .center
        errorMessageLabel.textColor = .red
        errorMessageLabel.numberOfLines = 0 //레이블을 여러줄 만드는것.
				errorMessageLabel.text = " "
        errorMessageLabel.isHidden = true //숨겨놓자

private func layout() {

NSLayoutConstraint.activate([
            errorMessageLabel.topAnchor.constraint
						(equalToSystemSpacingBelow: signInButton.bottomAnchor, multiplier: 2),
            
						errorMessageLabel.leadingAnchor.constraint
						(equalTo: loginView.leadingAnchor),
           
						errorMessageLabel.trailingAnchor.constraint
						(equalTo: loginView.trailingAnchor)
        ])
```

```swift
//signInButton.addTarget(self, action: #selector(signInTapped(_:)), 
													//for: .primaryActionTriggered)

@objc
    func signInTapped(_ sender: UIButton){
        errorMessageLabel.isHidden = true
        login()
    }
    
    private func login() {
        guard let username = username, let password = password else {
            assertionFailure("Username / password never be nil")
            return
        }
        if username.isEmpty || password.isEmpty {
            configureView(withMessage:"Username / password never be nil")
						return
        }
        
    }                              //매개변수 message 앞의 인수 레이블
    private func configureView(withMessage message: String){
        errorMessageLabel.isHidden = false
        errorMessageLabel.text = message
```