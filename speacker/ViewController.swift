//
//  ViewController.swift
//  speacker
//
//  Created by mr Yacine on 10/30/18.
//  Copyright © 2018 mr Yacine. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func speach(_ sender: UIButton) {
        myUtterance = AVSpeechUtterance(string: textView.text)
        myUtterance.rate = 0.3
        synth.speak(myUtterance)
    }
    
}

