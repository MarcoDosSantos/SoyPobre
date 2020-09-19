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
        
        let alert = UIAlertController(title: "Ya sos rico.", message: "¿No es genial?", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "Sí", style: .default) { (_) in
            print("Quiero ser rico")
        }
        
        alert.addAction(action1)
        
        let action2 = UIAlertAction(title: "No", style: .destructive) { (_) in
            print("No quiero ser rico")
            self.label.text = "Soy Pobre"
            
            self.image.image = UIImage(named: "soypobre")
            self.button.setTitle("Press Button", for: .normal)
        }
        
        alert.addAction(action2)

        self.show(alert, sender: nil)
    }
}

