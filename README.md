
 ** Today, What I learned  **
 ** 2022. 8.15.**

---
## errorMessageLabel

```swift
 let signInButton = UIButton(type: .system)

    view.addSubview(errorMessageLabel)

        errorMessageLabel.translatesAutoresizingMaskIntoConstraints = false
        errorMessageLabel.textAlignment = .center
        errorMessageLabel.textColor = .systemRed
        errorMessageLabel.numberOfLines = 0
        errorMessageLabel.isHidden = true

                NSLayoutConstraint.activate([
            errorMessageLabel.topAnchor.constraint(equalToSystemSpacingBelow: signInButton.bottomAnchor, multiplier: 2),
            errorMessageLabel.leadingAnchor.constraint(equalTo: signInButton.leadingAnchor),
            errorMessageLabel.trailingAnchor.constraint(equalTo: signInButton.trailingAnchor)
            
        ])

   @objc
    func signInTapped(_ sender: UIButton){
        errorMessageLabel.isHidden = true
        login()
    }
        
        private func login() {
            guard let username = username, let password = password else {
                assertionFailure("Username / password should never be nil")
                return
        }
            if username.isEmpty || password.isEmpty {
                configureView(withMessage: "Username / password should cannot be blank")
            }
    }
    private func configureView(withMessage Message: String){
        errorMessageLabel.isHidden = false
        errorMessageLabel.text = Message
    }