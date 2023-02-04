//
//  RegisterViewController.swift
//  GoldFarb
//
//  Created by Алина Лошакова on 02.02.2023.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var termsOfServiceButton: UIButton!
    @IBOutlet weak var privacyPolicyButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var termsOfServiceLabel: UILabel!
    @IBOutlet weak var privacyPolicyLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
      self.hideNavigationBar()
      createView()
    }
  
    func createView() {
        
    firstNameTextField.clipsToBounds         = true
    lastNameTextField.clipsToBounds          = true
    phoneNumberTextField.clipsToBounds       = true
    emailTextField.clipsToBounds             = true
    passwordTextField.clipsToBounds          = true
    termsOfServiceButton.clipsToBounds       = true
    privacyPolicyButton.clipsToBounds        = true
    loginButton.clipsToBounds                = true
        
        firstNameTextField.layer.cornerRadius = 5
        firstNameTextField.layer.borderWidth = 1
        firstNameTextField.layer.borderColor = UIColor(named: "Gray$")?.cgColor
        
        lastNameTextField.layer.cornerRadius = 5
        lastNameTextField.layer.borderWidth = 1
        lastNameTextField.layer.borderColor = UIColor(named: "Gray$")?.cgColor
        
        phoneNumberTextField.layer.cornerRadius = 5
        phoneNumberTextField.layer.borderWidth = 1
        phoneNumberTextField.layer.borderColor = UIColor(named: "Gray$")?.cgColor
        
        emailTextField.layer.cornerRadius = 5
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor(named: "Gray$")?.cgColor
        
        passwordTextField.layer.cornerRadius = 5
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor(named: "Gray$")?.cgColor
        
        termsOfServiceLabel.clipsToBounds = true
        termsOfServiceLabel.attributedText = strikeText(strike: "Terms of Service")
        
        privacyPolicyLabel.clipsToBounds = true
        privacyPolicyLabel.attributedText = strikeText(strike: "Privacy Policy")
        
        loginLabel.clipsToBounds = true
        loginLabel.attributedText = strikeText(strike: "LOGIN")
        
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

extension RegisterViewController {
    func hideNavigationBar() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
}
