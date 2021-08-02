//
//  TextFieldTableViewCell.swift
//  UISwitch,AddTarget
//
//  Created by Кирилл Блохин on 25.07.2021.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UIView! 
    @IBOutlet weak var textField: UITextField!
    
    var model = [Model]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textField.font = UIFont.boldSystemFont(ofSize: 17)
        textField.clearButtonMode = .whileEditing
        textField.keyboardType = .webSearch
        textField.textColor = #colorLiteral(red: 0.6449440718, green: 0.2486349046, blue: 0.2779229283, alpha: 1)
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        label.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(1)
            make.top.equalTo(textField.snp.bottom).inset(-1)
        }
    }
    
    func setting(text: String) {
        textField.placeholder = text
    }
}
