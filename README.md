
 ** Today, What I learned  **
 ** 2022. 8.7.**

---
## durationOpenAviewController

```swift
extension AppDelegate: LoginViewControllerDelegate {
        func didLogin() {
            setRootViewController(onboardingContainerViewController)
        }



extension AppDelegate {
    func setRootViewController(_ vc: UIViewController, animated: Bool = true) {
        guard animated, let window = self.window else {
            self.window?.rootViewController = vc
            self.window?.makeKeyAndVisible()
            return
        }

        window.rootViewController = vc
        window.makeKeyAndVisible()
        UIView.transition(with: window,
                          duration: 0.3,
                          options: .transitionCrossDissolve,
                          animations: nil,
                          completion: nil)
}