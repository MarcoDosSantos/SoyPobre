//
//  ViewController.swift
//  01-SoyPobre
//
//  Created by Marco Dos Santos on 19/09/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myView: UIView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {

        self.label.text = "Soy Rico"
        
        self.image.image = UIImage(named: "fullwallet")
        self.button.setTitle("Botón apretado", for: .normal)
    }
}

