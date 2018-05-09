//
//  ViewController.swift
//  PitchPerfect
//
//  Created by John Grant on 5/8/18.
//  Copyright © 2018 John Grant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var rocordButton: UIButton!
    @IBOutlet var recordingLabel: UILabel!
    @IBOutlet var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in Progress"
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        recordingLabel.text = "Stopped"
    }
}

