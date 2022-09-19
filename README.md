
 ** Today, What I learned  **
 ** 2022. 9.19.**

---
## Slide Animation

``` swift
var leadingEdgeOnScreen: CGFloat = 16
var leadingEdgeOffScreen: CGFloat = -1000
    
var titleLeadingAnchor: NSLayoutConstraint?    //Bankey
var subtitleLeadingAnchor: NSLayoutConstraint?  // Bankey아래글

override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animate()
    }

// Title
  NSLayoutConstraint.activate([
     subtitleLabel.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 3),
     titleLabel.trailingAnchor.constraint(equalTo: loginView.trailingAnchor)
        ])
        
     titleLeadingAnchor = titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leadingEdgeOffScreen)
     titleLeadingAnchor?.isActive = true
        
// Subtitle
   NSLayoutConstraint.activate([
     loginView.topAnchor.constraint(equalToSystemSpacingBelow: subtitleLabel.bottomAnchor, multiplier: 3),
     subtitleLabel.trailingAnchor.constraint(equalTo: loginView.trailingAnchor)
        ])
        
     subtitleLeadingAnchor = subtitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leadingEdgeOffScreen)
     subtitleLeadingAnchor?.isActive = true

// MARK: - Animations
extension LoginViewController {
    private func animate() {
        let animator1 = UIViewPropertyAnimator(duration: 1, curve: .easeInOut) {
            self.titleLeadingAnchor?.constant = self.leadingEdgeOnScreen
            self.subtitleLeadingAnchor?.constant = self.leadingEdgeOnScreen
            self.view.layoutIfNeeded()
        }
        animator1.startAnimation()
    }
}
```
