//
//  ViewController.swift
//  demos
//
//  Created by Maxime Britto on 26/01/2018.
//  Copyright © 2018 Maxime Britto. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {
    @IBOutlet weak var ui_preview: UIView!
    let captureSession = AVCaptureSession()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func startSessionButtonPressed(_ sender: Any) {
        if captureSession.isRunning {
            captureSession.stopRunning()
        } else {
            if captureSession.inputs.count == 0 {
                configureCaptureSession()
            }
            // 4 - Demarrer la session
            captureSession.startRunning()
        }
        
    }
    
    func configureCaptureSession() {
        // 1 - Configurer les entrées
        if let camera = AVCaptureDevice.default(for: AVMediaType.video),
           let cameraFeed = try? AVCaptureDeviceInput(device: camera) {
            captureSession.addInput(cameraFeed)
            
            // 2 - Configurer les sorties
            let outputFeed = AVCaptureVideoDataOutput()
            outputFeed.setSampleBufferDelegate(self, queue: DispatchQueue.global(qos: DispatchQoS.QoSClass.userInitiated))
            captureSession.addOutput(outputFeed)
            
            // 3 - Configurer l'apercu
            let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
            previewLayer.frame = ui_preview.bounds
            ui_preview.layer.addSublayer(previewLayer)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        guard let pixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else {
            return
        }
        
    }
    
    func captureOutput(_ output: AVCaptureOutput, didDrop sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        
    }
}

