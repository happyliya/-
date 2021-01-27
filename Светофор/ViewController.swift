//
//  ViewController.swift
//  Светофор
//
//  Created by HappyLiya on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
   
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 15
        redLightView.layer.cornerRadius = redLightView.frame.size.width / 2
        redLightView.clipsToBounds = true
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width / 2
        yellowLightView.clipsToBounds = true
        greenLightView.layer.cornerRadius = greenLightView.frame.size.width / 2
        greenLightView.clipsToBounds = true
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
       
        
        // Do any additional setup after loading the view.
    }

    @IBAction func startButtonPressed() {
        switch redLightView.alpha {
        case 0.3 where yellowLightView.alpha == 0.3 :
        redLightView.alpha = 1
        startButton.setTitle("NEXT", for: .normal)
        case 1 where yellowLightView.alpha == 0.3 :
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        case 0.3 where yellowLightView.alpha == 1 :
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        case 0.3 where greenLightView.alpha == 1 :
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        default:
            startButton.setTitle("NEXT", for: .normal)
        }
    //startButton.setTitle("NEXT", for: .normal)
//    redLightView.alpha = 1
//        if redLightView.alpha == 1 {
//            redLightView.alpha = 0.3
//            yellowLightView.alpha = 1
//        } else if yellowLightView.alpha == 1 {
//            yellowLightView.alpha = 0.3
//            greenLightView.alpha = 1
//        } else if greenLightView.alpha = 1 {
//            gre
//
       
           
        }
    }
    
        
    
    



