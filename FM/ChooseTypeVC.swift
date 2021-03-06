//
//  ChooseTypeVC.swift
//  FM
//
//  Created by user on 04/06/22.
//

import UIKit

class ChooseTypeVC: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomLabel.textColor = .black
        topLabel.textColor = .black
        // Do any additional setup after loading the view.
    }
    

    @IBAction func chooseTypeBtnTapped(_ sender: UIButton) {
        
        if sender.tag == 0 {
            topView.layer.borderWidth = 2
            topView.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            topLabel.textColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            bottomView.layer.borderWidth = 0
            bottomLabel.textColor = .black
        } else {
            bottomView.layer.borderWidth = 2
            bottomView.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            bottomLabel.textColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            topView.layer.borderWidth = 0
            topLabel.textColor = .black
        }
        
    }
    
    @IBAction func doneBtnTapped(_ sender: UIButton) {
        if topLabel.textColor == .black &&  bottomLabel.textColor == .black {
            showAlert()
        }
    }
    func showAlert() {
        let alert = UIAlertController(title: "Тип не выбран", message:"Пожалуйста выберите свой тип" ,preferredStyle: .alert)
        
        let OKaction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(OKaction)
        self.present(alert, animated: true, completion: nil)
    }

}
