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
    var selectedSimpson : Simpson?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
       
        let homer = Simpson(nameSimpson: "Homer Simpson", ageSimpson: 50, jobSimpson: "Nuclear Safety Inspector", imageSimpson: UIImage(named: "homer")!)
        let marge = Simpson(nameSimpson: "Maggie Simpson", ageSimpson: 50, jobSimpson: "Housewife", imageSimpson: UIImage(named: "marge")!)
        let bart = Simpson(nameSimpson: "Bart Simpson", ageSimpson: 13, jobSimpson: "Student", imageSimpson: UIImage(named: "bart")!)
        let lisa = Simpson(nameSimpson: "Lisa Simpson", ageSimpson: 15, jobSimpson: "Student", imageSimpson: UIImage(named: "lisa")!)
        let maggie = Simpson(nameSimpson: "Maggie Simpson", ageSimpson: 2, jobSimpson: "Student", imageSimpson: UIImage(named: "maggie")!)
        
        let simpsonArray = [homer, marge, bart, lisa, maggie]
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name //Sonuna .name ekledik yoksa indexPath bize bir Simpson değişkeni verdiğinden işimize yaramıyor, .name diyerek bu diziden isim verilerini çektik.
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = selectedSimpson
        }
    }

}

