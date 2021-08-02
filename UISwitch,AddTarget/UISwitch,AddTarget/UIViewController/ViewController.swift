//
//  ViewController.swift
//  UISwitch,AddTarget
//
//  Created by Кирилл Блохин on 23.07.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    private let logoImage: UIImageView = {
        let image = UIImageView(frame: CGRect())
        image.image = UIImage(named: "Logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private let signInLabel: UILabel = {
        let label = UILabel(frame: CGRect())
        label.text = "Sing In"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = #colorLiteral(red: 0.2750269473, green: 0.4712229371, blue: 0.1802220941, alpha: 1)
        return label
    }()
    
    private let lineView: UIView = {
        let view = UIView(frame: CGRect())
        view.backgroundColor = #colorLiteral(red: 0.2750269473, green: 0.4712229371, blue: 0.1802220941, alpha: 1)
        return view
    }()
    
    private let line2View: UIView = {
        let view = UIView(frame: CGRect())
        view.backgroundColor = #colorLiteral(red: 0.2750269473, green: 0.4712229371, blue: 0.1802220941, alpha: 1)
        return view
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel(frame: CGRect())
        label.text = "Email"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = #colorLiteral(red: 0.9691553712, green: 0.3721674681, blue: 0.4163972735, alpha: 1)
        return label
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel(frame: CGRect())
        label.text = "Password"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = #colorLiteral(red: 0.9691553712, green: 0.3721674681, blue: 0.4163972735, alpha: 1)
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField(frame: CGRect())
        textField.keyboardType = .webSearch
        textField.placeholder = "Введите почту"
        textField.font = UIFont.boldSystemFont(ofSize: 17)
        textField.clearButtonMode = .whileEditing
        textField.textColor = #colorLiteral(red: 0.6449440718, green: 0.2486349046, blue: 0.2779229283, alpha: 1)
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect())
        textField.isSecureTextEntry = true
        textField.keyboardType = .webSearch
        textField.placeholder = "Введите пароль"
        textField.font = UIFont.boldSystemFont(ofSize: 17)
        textField.clearButtonMode = .whileEditing
        textField.textColor = #colorLiteral(red: 0.6449440718, green: 0.2486349046, blue: 0.2779229283, alpha: 1)
        return textField
    }()
    
    private let enterButton: UIButton = {
        let buttton = UIButton(frame: CGRect())
        buttton.setTitle("Войти", for: .normal)
        buttton.backgroundColor = #colorLiteral(red: 0.9691553712, green: 0.3721674681, blue: 0.4163972735, alpha: 1)
        buttton.layer.cornerRadius = 10
        buttton.addTarget(self, action: #selector(pressingEnterButton), for: .touchUpInside )
        return buttton
    }()
    
    private let securityButton: UIButton = {
        let buttton = UIButton(frame: CGRect())
        buttton.setImage(#imageLiteral(resourceName: "password"), for: .normal)
        buttton.addTarget(self, action: #selector(pressingSecurityButtton), for: .touchUpInside )
        return buttton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        
        view.backgroundColor = #colorLiteral(red: 0.6863526702, green: 0.8787627816, blue: 0.7164370418, alpha: 1)
        
        view.addSubview(lineView)
        view.addSubview(line2View)
        view.addSubview(logoImage)
        view.addSubview(emailLabel)
        view.addSubview(signInLabel)
        view.addSubview(enterButton)
        view.addSubview(passwordLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(securityButton)
        
        constraints()
    }
    
    func constraints() {
        self.logoImage.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(100)
        }
        
        self.signInLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(40)
            make.top.equalTo(logoImage.snp.bottom).inset(-50)
        }
        
        self.emailLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(40)
            make.top.equalTo(signInLabel.snp.bottom).inset(-25)
        }
        
        self.emailTextField.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(40)
            make.top.equalTo(emailLabel.snp.bottom).inset(-5)
            make.height.equalTo(40)
        }
        
        self.lineView.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).inset(-1)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(1)
        }
        
        self.passwordLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(40)
            make.top.equalTo(emailTextField.snp.bottom).inset(-25)
        }
        
        self.passwordTextField.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(40)
            make.trailing.equalToSuperview().inset(80)
            make.top.equalTo(passwordLabel.snp.bottom).inset(-5)
            make.height.equalTo(40)
        }
        
        self.line2View.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).inset(-1)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(1)
        }
        
        self.enterButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(40)
            make.top.equalTo(passwordTextField.snp.bottom).inset(-100)
            make.height.equalTo(60)
        }
        
        self.securityButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(45)
            make.top.equalTo(lineView.snp.bottom).inset(-65)
            make.height.width.equalTo(20)
        }
    }
    
    @objc func pressingEnterButton(sender: UIButton!) {
        if emailTextField.text != "" && passwordTextField.text != "" {
            let seconVC = SecondViewController()
            seconVC.modalTransitionStyle = .crossDissolve
            seconVC.modalPresentationStyle = .fullScreen
            self.present(seconVC, animated: true, completion: nil)
        } else if emailTextField.text == "" || passwordTextField.text == ""  {
            emailTextField.placeholder = "Введите почту!!!"
            passwordTextField.placeholder = "Введите пароль!!!"
        }
    }
    
    @objc func pressingSecurityButtton(sender: UIButton!) {
        passwordTextField.isSecureTextEntry.toggle()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        return false
    }
}

