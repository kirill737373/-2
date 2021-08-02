//
//  TableViewCell.swift
//  UISwitch,AddTarget
//
//  Created by Кирилл Блохин on 26.07.2021.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var lineView2: UIView!
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numberOfGuests: UILabel!
    @IBOutlet weak var numberOfGuestsLabel: UILabel!
    
    @IBOutlet weak var tableNumber: UILabel!
    @IBOutlet weak var tableNumberLabel: UILabel!
    
    @IBOutlet weak var sum: UILabel!
    @IBOutlet weak var sumLabel: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        name.font = UIFont.boldSystemFont(ofSize: 20)
        name.textColor = #colorLiteral(red: 0.9691553712, green: 0.3721674681, blue: 0.4163972735, alpha: 1)
        
        nameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        nameLabel.textColor = #colorLiteral(red: 0.2750269473, green: 0.4712229371, blue: 0.1802220941, alpha: 1)
        
        numberOfGuests.font = UIFont.boldSystemFont(ofSize: 20)
        numberOfGuests.textColor = #colorLiteral(red: 0.9691553712, green: 0.3721674681, blue: 0.4163972735, alpha: 1)
        
        numberOfGuestsLabel.font = UIFont.boldSystemFont(ofSize: 17)
        numberOfGuestsLabel.textColor = #colorLiteral(red: 0.2750269473, green: 0.4712229371, blue: 0.1802220941, alpha: 1)
        
        tableNumber.font = UIFont.boldSystemFont(ofSize: 20)
        tableNumber.textColor = #colorLiteral(red: 0.9691553712, green: 0.3721674681, blue: 0.4163972735, alpha: 1)
        
        tableNumberLabel.font = UIFont.boldSystemFont(ofSize: 17)
        tableNumberLabel.textColor = #colorLiteral(red: 0.2750269473, green: 0.4712229371, blue: 0.1802220941, alpha: 1)
        
        sum.font = UIFont.boldSystemFont(ofSize: 20)
        sum.textColor = #colorLiteral(red: 0.9691553712, green: 0.3721674681, blue: 0.4163972735, alpha: 1)
        
        sumLabel?.font = UIFont.boldSystemFont(ofSize: 21)
        sumLabel?.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        name.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(40)
            make.top.equalToSuperview().inset(20)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(40)
            make.top.equalTo(name.snp.bottom).inset(-20)
        }
        
        numberOfGuests.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(40)
            make.top.equalTo(nameLabel.snp.bottom).inset(-20)
        }
        
        numberOfGuestsLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(40)
            make.top.equalTo(numberOfGuests.snp.bottom).inset(-20)
        }
        
        tableNumber.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(40)
            make.top.equalTo(numberOfGuestsLabel.snp.bottom).inset(-20)
        }
        
        tableNumberLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(40)
            make.top.equalTo(tableNumber.snp.bottom).inset(-20)
        }
        
        sum.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(40)
            make.top.equalTo(tableNumberLabel.snp.bottom).inset(-20)
        }

        sumLabel?.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(40)
            make.top.equalTo(sum.snp.bottom).inset(-20)
        }
        
        lineView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(0)
            make.top.equalToSuperview().inset(15)
            make.height.equalTo(1)
        }
        
        lineView2.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(0)
            make.top.equalTo(sumLabel!.snp.bottom).inset(-2)
            make.height.equalTo(1)
        }
    }
}
