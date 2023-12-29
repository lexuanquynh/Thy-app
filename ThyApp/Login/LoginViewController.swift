//
//  LoginViewController.swift
//  ThyApp
//
//  Created by Le Xuan Quynh on 21/12/2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var continueButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        #if DEBUG
        passwordTextField.text = "123"
        #endif
    }


    @IBAction func onContinueTouched(_ sender: UIButton) {
        let text = passwordTextField.text
        // Kiểm tra password có đúng là 123 hay không, nếu đúng thì mở màn hình CalcualtorViewController
        if text == "123" {
            // Mở màn hình CalculatorViewController
            let calculatorViewController = CalcualtorViewController()
            self.present(calculatorViewController, animated: true)
        } else {
            // Hiển thị thông báo
            let alert = UIAlertController(title: "Thông báo", message: "Mật khẩu không đúng", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                debugPrint("Bạn vừa bấm OK")
            }))
            self.present(alert, animated: true)
        }

        // Show alert
        /*let alert = UIAlertController(title: "Thong bao", message: "Xin chào bạn Thy", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            debugPrint("Ban vua bam OK")
        }))

        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            debugPrint("Ban vua bam Cancel")
        }))

        self.present(alert, animated: true) */
    }
    
}
