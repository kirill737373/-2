//
//  SecondViewController.swift
//  UISwitch,AddTarget
//
//  Created by Кирилл Блохин on 25.07.2021.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate{
    
    private var tableView = UITableView()
    
    private let textField = TextFieldTableViewCell()
    private let label = LabelTableViewCell()
    private let switch1 = SwitchTableViewCell()
    
    enum TypeCell {
        case labelCell(text: String)
        case textFieldCell(text: String)
        case textFieldCell1(text: String)
        case textFieldCell2(text: String)
        case switchCell(text: String)
        case buttonCell
    }
    
    var model = [Model]()
    
    
    var arrayCell: [TypeCell] = [.labelCell(text: "ФИО"),
                                 .textFieldCell(text: "Введите ваше имя"),
                                 .labelCell(text: "Количество гостей"),
                                 .textFieldCell1(text: "Введите количество гостей"),
                                 .labelCell(text: "Номер стола"),
                                 .textFieldCell2(text: "Введите номер стола"),
                                 .switchCell(text: "Бронировали стол?"),
                                 .switchCell(text: "Предоплата?"),
                                 .switchCell(text: "VIP комната?"),
                                 .buttonCell
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = #colorLiteral(red: 0.6863526702, green: 0.8787627816, blue: 0.7164370418, alpha: 1)
        tableView.keyboardDismissMode = .onDrag
        
        constraints()
        
        tableView.register(UINib(nibName: "LabelTableViewCell", bundle: nil), forCellReuseIdentifier: "LabelTableViewCell")
        tableView.register(UINib(nibName: "TextFieldTableViewCell", bundle: nil), forCellReuseIdentifier: "TextFieldTableViewCell")
        tableView.register(UINib(nibName: "SwitchTableViewCell", bundle: nil), forCellReuseIdentifier: "SwitchTableViewCell")
        tableView.register(UINib(nibName: "ButtonTableViewCell", bundle: nil), forCellReuseIdentifier: "ButtonTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCell.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch arrayCell[indexPath.row] {
        
        case .labelCell(let text):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "LabelTableViewCell", for: indexPath) as? LabelTableViewCell else { return UITableViewCell() }
            cell.selectionStyle = .none
            cell.setting(text: text)
            cell.backgroundColor = .clear
            return cell
            
        case .textFieldCell(let text):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldTableViewCell", for: indexPath) as? TextFieldTableViewCell else { return UITableViewCell() }
            cell.selectionStyle = .none
            cell.setting(text: text)
            
            cell.backgroundColor = .clear
            return cell
            
        case .textFieldCell1(text: let text):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldTableViewCell", for: indexPath) as? TextFieldTableViewCell else { return UITableViewCell() }
            cell.selectionStyle = .none
            cell.setting(text: text)
            cell.backgroundColor = .clear
            return cell
            
        case .textFieldCell2(let text):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldTableViewCell", for: indexPath) as? TextFieldTableViewCell else { return UITableViewCell() }
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            cell.setting(text: text)
            
            return cell
            
        case .switchCell(let text):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SwitchTableViewCell", for: indexPath) as? SwitchTableViewCell else { return UITableViewCell() }
            cell.selectionStyle = .none
            cell.setting(text: text)
            cell.backgroundColor = .clear
            return cell
            
        case .buttonCell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonTableViewCell", for: indexPath) as? ButtonTableViewCell else { return UITableViewCell() }
            cell.button.addTarget(self, action: #selector(pressingEnterButton), for: .touchUpInside)
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
        }
    }
    
    @objc func pressingEnterButton(sender: UIButton!) {
        let alertController = UIAlertController(title: "Здравствуте", message: "Желаете оформить заказ?", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            let seconVC = CheckViewController()
            seconVC.modalTransitionStyle = .crossDissolve
            seconVC.modalPresentationStyle = .fullScreen
            self.present(seconVC, animated: true, completion: nil)
        }
        let action1 = UIAlertAction(title: "Отмена", style: .cancel) { (action) in
        }
        
        alertController.addAction(action1)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func constraints() {
        tableView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview().inset(0)
        }
    }
}
