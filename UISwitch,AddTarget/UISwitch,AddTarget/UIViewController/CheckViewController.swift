//
//  CheckViewController.swift
//  UISwitch,AddTarget
//
//  Created by Кирилл Блохин on 26.07.2021.
//


import UIKit

class CheckViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    private var checkTableView = UITableView()
    //сссссс
    let model = [
        Model(name: "Кирилл Блохин Александрович", numberOfGuests: "4", tableNumber: "15"),
        Model(name: "Пазерский Дмитрий Иванович", numberOfGuests: "5", tableNumber: "12"),
        Model(name: "Пантелеенко Серафим Александрович", numberOfGuests: "8", tableNumber: "3"),
        Model(name: "Пуртов Константин Михайлович", numberOfGuests: "4", tableNumber: "23")
    ]
    
    let switch1 = SwitchTableViewCell().switch1
    let tabaleViewCell = TableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(checkTableView)
        constraints()
        
        checkTableView.delegate = self
        checkTableView.dataSource = self
        checkTableView.separatorStyle = .none
        checkTableView.backgroundColor = #colorLiteral(red: 0.6863526702, green: 0.8787627816, blue: 0.7164370418, alpha: 1)
        checkTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 345
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else { return UITableViewCell() }
        
        cell.nameLabel.text = model[indexPath.row].name
        cell.numberOfGuestsLabel.text = String(model[indexPath.row].numberOfGuests)
        cell.tableNumberLabel.text = String(model[indexPath.row].tableNumber)
        cell.sumLabel!.text = switch1.isOn ? "500" : "0"
        
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        
        print(model)
        return cell
    }
    
    func constraints() {
        checkTableView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview().inset(0)
        }
    }
}
