//
//  ViewController.swift
//  tapper
//
//  Created by Daniel Soares on 14/06/16.
//  Copyright © 2016 Daniel Soares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var btnStart: UIButton!
    
    @IBOutlet weak var texto: UITextField!
    
    @IBOutlet weak var btnAcao: UIButton!
    
    @IBOutlet weak var lbl: UILabel!
    
    var maxTaps = 0;
    var currentTaps = 0;
    
    @IBAction func start(sender: UIButton) {
        
        if (texto.text != nil && texto.text != ""){
            btnAcao.hidden = false
            lbl.hidden = false
            img1.hidden = true
            btnStart.hidden = true
            texto.hidden = true
            
            maxTaps = Int(texto.text!)!
            currentTaps = 0;
            lbl.text = "\(currentTaps)"
        }
        
    }
    
    
    @IBAction func clicar(sender: AnyObject) {
        currentTaps = currentTaps + 1;
        lbl.text = "\(currentTaps)"
        
        
        if (currentTaps == maxTaps){
            btnAcao.hidden = true
            lbl.hidden = true
            img1.hidden = false
            btnStart.hidden = false
            texto.hidden = false
            
            maxTaps = 0;
            currentTaps = 0;
            
            texto.text = ""
            lbl.text = ""
        }
        
    }
    
    
}

