//
//  SecondViewController.swift
//  SimpsonBook
//
//  Created by Büşra Özkan on 11.11.2022.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var selectedSimpson : Simpsons?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
        
    }
    

    

}
