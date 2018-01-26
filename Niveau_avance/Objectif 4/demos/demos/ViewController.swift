//
//  ViewController.swift
//  demos
//
//  Created by Maxime Britto on 26/01/2018.
//  Copyright © 2018 Maxime Britto. All rights reserved.
//

import UIKit
import AVFoundation
import Vision

class ViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {
    
    
    @IBOutlet weak var ui_titleLabel: UILabel!
    @IBOutlet weak var ui_infoLabel: UILabel!
    @IBOutlet weak var ui_preview: UIView!
    let captureSession = AVCaptureSession()
    
    
    lazy var imageRecognitionRequest: VNRequest = {
        let model = try! VNCoreMLModel(for: Inceptionv3().model)
        let request = VNCoreMLRequest(model: model, completionHandler:self.imageRecognitionHandler)
        return request
    }()
    
    func imageRecognitionHandler(request:VNRequest, error:Error?) {
        guard let observations = request.results as? [VNClassificationObservation],
              let bestGuess = observations.first else {
            return
        }
        
        DispatchQueue.main.async {
            if bestGuess.confidence > 0.6 {
                self.ui_titleLabel.text = bestGuess.identifier
                self.ui_infoLabel.text = "Probabilité : \(bestGuess.confidence)"
            } else {
                self.ui_infoLabel.text = "Recherche en cours..."
            }
        }
    }

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
        
        let imageRequestHandler = VNImageRequestHandler(cvPixelBuffer: pixelBuffer, orientation: CGImagePropertyOrientation.up, options: [:])
        
        do {
            try imageRequestHandler.perform([imageRecognitionRequest])
        } catch {
            print(error)
        }
        
    }
    
    func captureOutput(_ output: AVCaptureOutput, didDrop sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        
    }
}

