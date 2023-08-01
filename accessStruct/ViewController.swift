//
//  ViewController.swift
//  accessStruct
//
//  Created by Akash Belekar on 07/03/23.
//

import UIKit
struct Person{
    var name : String
    var age :Int
    var city : String
    var state : String
    
    init(name: String, age: Int, city: String, state: String) {
        self.name = name
        self.age = age
        self.city = city
        self.state = state
    }
    
}
class ViewController: UIViewController {
    @IBOutlet weak var personInfoTbl:UITableView!

    var personIns = Person(name: "Mobifilia", age: 10, city: "Kolhapur", state: "Maharastra") //Member Initilizers swift automatically create for you. only for structure and enumrators
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        personInfoTbl.register(UINib(nibName: "TVC", bundle: nil), forCellReuseIdentifier: "TVC")
        personInfoTbl.delegate = self
        personInfoTbl.dataSource = self
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personIns.age
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TVC", for: indexPath) as! TVC
        cell.nameLbl.text = "Name:- \(personIns.name)"
        cell.ageLbl.text = "Age:- \(String(personIns.age))"
        cell.cityLbl.text = "City:- \(personIns.city)"
        cell.StateLbl.text = "State:- \(personIns.state)"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
