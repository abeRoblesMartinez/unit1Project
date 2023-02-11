//
//  DetailViewController.swift
//  project1
//
//  Created by Abraham on 2/10/23.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var factImageView: UIImageView!
    @IBOutlet weak var factLabel: UILabel!
    
    // Property
    var fact: Fact?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let fact = fact {
            factImageView.image = fact.image
            factLabel.text = String(fact.fact)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
