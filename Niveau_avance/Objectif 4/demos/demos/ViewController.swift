//
//  ViewController.swift
//  demos
//
//  Created by Maxime Britto on 26/01/2018.
//  Copyright © 2018 Maxime Britto. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var ui_preview: UIView!
    let captureSession = AVCaptureSession()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func startSessionButtonPressed(_ sender: Any) {
        configureCaptureSession()
    }
    
    func configureCaptureSession() {
        // 1 - Configurer les entrées
        if let camera = AVCaptureDevice.default(for: AVMediaType.video),
           let cameraFeed = try? AVCaptureDeviceInput(device: camera) {
            captureSession.addInput(cameraFeed)
        }
        
        // 2 - Configurer les sorties
        let outputFeed = AVCaptureVideoDataOutput()
        captureSession.addOutput(outputFeed)
        
        // 3 - Configurer l'apercu
        
        // 4 - Demarrer la session
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

