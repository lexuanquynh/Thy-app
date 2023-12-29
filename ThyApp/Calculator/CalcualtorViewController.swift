//
//  CalcualtorViewController.swift
//  ThyApp
//
//  Created by Le Xuan Quynh on 29/12/2023.
//

import UIKit

class CalcualtorViewController: UIViewController {
    @IBOutlet weak var numberOneTextField: UITextField!
    @IBOutlet weak var numberTwoTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onCongTouched(_ sender: UIButton) {
        let numberOne = Int(numberOneTextField.text ?? "") ?? 0
        let numberTwo = Int(numberTwoTextField.text ?? "") ?? 0
        let result = numberOne + numberTwo
        resultLabel.text = "\(result)"
    }

    @IBAction func onTruTouched(_ sender: UIButton) {
        let numberOne = Int(numberOneTextField.text ?? "") ?? 0
        let numberTwo = Int(numberTwoTextField.text ?? "") ?? 0
        let result = numberOne - numberTwo
        resultLabel.text = "\(result)"
    }

    @IBAction func onNhanTouched(_ sender: UIButton) {
        let numberOne = Int(numberOneTextField.text ?? "") ?? 0
        let numberTwo = Int(numberTwoTextField.text ?? "") ?? 0
        let result = numberOne * numberTwo
        resultLabel.text = "\(result)"
    }

    @IBAction func onChiaTouched(_ sender: UIButton) {
        let numberOne = Int(numberOneTextField.text ?? "") ?? 0
        let numberTwo = Int(numberTwoTextField.text ?? "") ?? 0
        // check numberTwo == 0
        if numberTwo == 0 {
            resultLabel.text = "Không thể chia cho 0"
        } else {
            let result = numberOne / numberTwo
            resultLabel.text = "\(result)"
        }
    }
}
