//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Ferhat Mesut Görür on 4.10.2022.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson : Simpson?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = selectedSimpson?.image
        nameLabel.text = selectedSimpson?.name
        jobLabel.text  = selectedSimpson?.job
        
    }
    

}
