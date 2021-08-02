//
//  LabelTableViewCell.swift
//  UISwitch,AddTarget
//
//  Created by Кирилл Блохин on 25.07.2021.
//

import UIKit
import SnapKit

class LabelTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel! 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = #colorLiteral(red: 0.9691553712, green: 0.3721674681, blue: 0.4163972735, alpha: 1)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setting(text: String) {
        label.text = text
    }
}
