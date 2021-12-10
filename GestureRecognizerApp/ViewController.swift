//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Eyüp Fidan on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isJames = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true // image tıklanma özelliği
        let gestureRecognizer = UITapGestureRecognizer(target: self, action:#selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic() {
        if isJames == true {
            imageView.image = UIImage(named: "tokio-2")
            myLabel.text = "Tokyo Team 2"
            isJames = false
        }
        else {
            imageView.image = UIImage(named: "tokio-1")
            myLabel.text = "Tokyo Team 1"
            isJames = true
        }
     
    }

}

