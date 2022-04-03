import Foundation
import MBProgressHUD

protocol Animatable where Self: UIViewController{
    func showLoadingAnimation()
    func hideLoadingAnimation()
}

extension Animatable {
    func showLoadingAnimation(){
        DispatchQueue.main.async {
            MBProgressHUD.showAdded(to: self.view, animated: true)
        }
    }
    func hideLoadingAnimation(){
        DispatchQueue.main.async {
            MBProgressHUD.hide(for: self.view, animated: true)
        }
    }
}
