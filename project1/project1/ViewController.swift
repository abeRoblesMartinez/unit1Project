//
//  ViewController.swift
//  project1
//
//  Created by Abraham on 2/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    // Screen facts
    let fact1 = Fact(image: UIImage(named: "planetpopstar")!, fact: "Kirby lives in Dreamland kingdom in the planet Popstar. He frequently helps save his homeplanet with his abilities.")
    let fact2 = Fact(image: UIImage(named: "kirbyability")!, fact: "Kirby can inhale enemies, which gives him their abilities. He has many abilities to choose from, including Ice, Beam and Ninja! He can also transform into different objects, such as a tank, submarine, or even a rocket!")
    let fact3 = Fact(image: UIImage(named: "kirbyfriends")!, fact: "Kirby has many friends and allies. He also has rivals. King Dedede is the ruler of Dreamland whose greed often causes mischief throughout the kingdom. Meta Knight is a mysterious Knight who often battles Kirby, but also mentors and teaches Kirby at times.")
    let fact4 = Fact(image: UIImage(named: "kirbynapping")!, fact: "Kirby's many pastimes include napping, singing, drawing, and eating watermelons.")

    var facts: [Fact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        facts = [fact1, fact2, fact3, fact4]
    }


    @IBAction func didTapFact(_ sender: UITapGestureRecognizer) {
        
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.fact = facts[0]
            } else if tappedView.tag == 1 {
                detailViewController.fact = facts[1]
            } else if tappedView.tag == 2 {
                detailViewController.fact = facts[2]
            } else if tappedView.tag == 3 {
                detailViewController.fact = facts[3]
            } else {
                print("no Facts were checked, please try again")
            }
        }
    }
}

