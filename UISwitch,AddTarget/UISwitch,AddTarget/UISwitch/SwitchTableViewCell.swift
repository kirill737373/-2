//
//  SwitchTableViewCell.swift
//  UISwitch,AddTarget
//
//  Created by Кирилл Блохин on 25.07.2021.
//

import UIKit
import SnapKit

class SwitchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var switch2: UISwitch!
    let switch1: UISwitch = {
        let switch1 = UISwitch(frame: CGRect())
        return switch1
    }()
    @IBOutlet weak var Label: UILabel!
    
    let check = TableViewCell()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.addSubview(switch1)
        switch1.setOn(false, animated: true)
        switch1.onTintColor = #colorLiteral(red: 0.9691553712, green: 0.3721674681, blue: 0.4163972735, alpha: 1)
        switch1.thumbTintColor = #colorLiteral(red: 0.4037821293, green: 0.5172739029, blue: 0.424893409, alpha: 1)
        switch1.addTarget(self, action: #selector(switchChange(param:)), for: .valueChanged)
        Label.font = UIFont.boldSystemFont(ofSize: 20)
        Label.textColor = #colorLiteral(red: 0.9691553712, green: 0.3721674681, blue: 0.4163972735, alpha: 1)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        switch1.snp.makeConstraints { make in
            make.trailing.equalTo(-30)
            make.top.equalTo(10)
        }
    }
    
    @objc func switchChange(param: UISwitch) {
        if param.isOn {
            check.sumLabel?.text = "500"
            print("500")
        } else {
            check.sumLabel?.text = "0"
            print("0")
        }
    }
    
    func setting(text: String) {
        Label.text = text
    }
}
