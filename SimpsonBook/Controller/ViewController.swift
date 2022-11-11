//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Büşra Özkan on 11.11.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var tableView: UITableView!
    var mySimpson = [Simpsons]()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Simpson Objects
        let homer = Simpsons(initName: "Homer Simpson", initJob: "Nuclear Safety", initImage: UIImage(named: "homer")!)
        let marge = Simpsons(initName: "Marge Simpson", initJob: "Housewife", initImage: UIImage(named: "marge")!)
        let bart = Simpsons(initName: "Bart Simpson", initJob: "Student", initImage: UIImage(named: "bart")!)
        let lisa = Simpsons(initName: "Lisa Simpson", initJob: "Student", initImage: UIImage(named: "lisa")!)
        let maggie = Simpsons(initName: "Maggie Simpson", initJob: "Baby", initImage: UIImage(named: "maggie")!)
        
        mySimpson.append(homer)
        mySimpson.append(marge)
        mySimpson.append(bart)
        mySimpson.append(lisa)
        mySimpson.append(maggie)
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpson[indexPath.row].name
        return cell
    }
}

