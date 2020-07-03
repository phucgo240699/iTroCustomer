import UIKit

extension  UIViewController{
    func ShowError(_ title: String, _ description: String){
        let alert = UIAlertController(title: title, message: description, preferredStyle: .alert)
        
        let OK = UIAlertAction(title: "Ok", style: .default) { (UIAlertAction) in
            
        }
        
        alert.addAction(OK)
        
        self.present(alert, animated: true, completion: nil)
    }
}
