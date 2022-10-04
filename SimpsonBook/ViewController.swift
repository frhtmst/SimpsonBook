//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ferhat Mesut Görür on 4.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 

    
    @IBOutlet weak var tableView: UITableView!
    var mySimpsons = [Simpson]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
       // performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
        //Simpson Objects
        
        let homer = Simpson(nameInit: "Homer Simpson", jobInit: "Nucler Safety Inspector", imageInit: UIImage(named: "homer")!)
         let marge = Simpson(nameInit: "Marge Simpson", jobInit: "Housewife", imageInit: UIImage(named: "marge")!)
         let bart = Simpson(nameInit: "Bart Simpson", jobInit: "Student", imageInit: UIImage(named: "bart")!)
         let lisa = Simpson(nameInit: "Lisa Simpson", jobInit: "Student", imageInit: UIImage(named: "lisa")!)
         let maggie = Simpson(nameInit: "Maggie Simpson", jobInit: "Baby", imageInit: UIImage(named: "maggie")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name //Sonuna .name ekledik yoksa indexPath bize bir Simpson değişkeni verdiğinden işimize yaramıyor, .name diyerek bu diziden isim verilerini çektik.
        return cell
    }
    
    

}

