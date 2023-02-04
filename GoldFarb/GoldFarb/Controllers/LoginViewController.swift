//
//  LoginViewController.swift
//  GoldFarb
//
//  Created by Алина Лошакова on 01.02.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userTextField:         UITextField!
    @IBOutlet weak var passwordTextField:     UITextField!
    @IBOutlet weak var forgotPasswordLabel:   UILabel!
    @IBOutlet weak var registerButton:        UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.hideNavigationBar()
        createView()
    }
    
    func createView() {
        
        userTextField.clipsToBounds = true
        passwordTextField.clipsToBounds = true
                
        userTextField.layer.cornerRadius = 5
        passwordTextField.layer.cornerRadius = 5
        
        passwordTextField.layer.borderWidth = 1
        userTextField.layer.borderWidth = 1
        
        passwordTextField.layer.borderColor = UIColor(named: "Gray$")?.cgColor
        userTextField.layer.borderColor = UIColor(named: "Gray$")?.cgColor
        
        forgotPasswordLabel.attributedText = strikeText(strike: "Forgot password?")
        
        registerButton.clipsToBounds = true
     
        registerButton.titleLabel?.font = UIFont(name: "Gotham-Book", size: 10)
            
        
    }
    //underlined text
    func strikeText(strike : String) -> NSMutableAttributedString {
        let attributeString = NSMutableAttributedString(string: strike)
        attributeString.addAttribute(NSAttributedString.Key.underlineStyle,
                                     value: NSUnderlineStyle.single.rawValue,
                                     range: NSMakeRange(0, attributeString.length))
        return attributeString
        
    }

}

extension LoginViewController {
    func hideNavigationBar() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
}
