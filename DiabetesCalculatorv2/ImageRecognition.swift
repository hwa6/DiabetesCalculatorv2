//
//  FirstViewController.swift
//  Rock ID
//
//  Created by Henry Anderson on 5/3/20.
//  Copyright © 2020 Henry Anderson. All rights reserved.
//

//this controller is where the camera is opened, and detects image
import UIKit
import AVKit
import Vision

class ImageRecognition: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {
    override func viewDidLoad() {
        //loads view
        super.viewDidLoad()
    //start up the camera
        let captureSession = AVCaptureSession()
        //add inputs to captureSession
        guard let captureDevice = AVCaptureDevice.default(for: .video)
            else{
                return
        }
        guard let input = try? AVCaptureDeviceInput(device: captureDevice)
            else{
                return
        }
        captureSession.addInput(input)
        captureSession.startRunning()
        
    //need outlet preview layer to put image on screen
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        view.layer.addSublayer(previewLayer)
        //specifying frame for preview layer
        previewLayer.frame = view.frame
        
   //getting frame
        let dataOutput = AVCaptureVideoDataOutput()
        dataOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "videoQueue"))
        captureSession.addOutput(dataOutput)
        
        
    //here comes the Vision/Machine Learning
        //let request = VNCoreMLRequest(model: Food101)
        //VNImageRequestHandler(cgImage: <#T##CGImage#>, options: [:]).perform(<#T##requests: [VNRequest]##[VNRequest]#>)
    }
    
    
    var activeSlot = 0
    //function called everytime camera can capture a frame
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        //turns frame into sampleBuffer
        //sets pixelbuffer equal to it
        guard let pixelBuffer: CVPixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer)
            else{
                return
        }
        
        //variable for active index
        
        guard let model = try? VNCoreMLModel(for: henryfoodmodel().model) else{return}
        let request = VNCoreMLRequest(model: model) { (finishedReq, err) in
            //getting results
            guard let results = finishedReq.results as? [VNClassificationObservation] else{return}
            guard let firstObservation = results.first else{return}
            print(firstObservation.identifier,firstObservation.confidence)
            if(firstObservation.confidence > 0.4){
                if(self.activeSlot == 0){
                    print("confident")
                    ImageRecognition.UniversalInfo.foodnameArray[self.activeSlot] = firstObservation.identifier
                    print(self.activeSlot)
                    self.activeSlot = self.activeSlot + 1
                    print(self.activeSlot)
                    //ViewController.UniversalInfo.foodcarbArray[0] = Double (firstObservation.confidence)
                }
                if(self.activeSlot != 0){
                    if(self.activeSlot == 4){
                        //DONT KNOW IF THIS ACTUALLY BREAKS OUT OF SESSION
                        //we can try setting slot back to 0
                        return
                    }
                    if(firstObservation.identifier != ImageRecognition.UniversalInfo.foodnameArray[self.activeSlot-1]){
                        ImageRecognition.UniversalInfo.foodnameArray[self.activeSlot] = firstObservation.identifier
                    }
                }
                
            
            }
        }
        try? VNImageRequestHandler(cvPixelBuffer: pixelBuffer, options: [:]).perform([request])
    }
    struct UniversalInfo { //struct allows data to be passed between view controllers
        static var foodnameArray = UserDefaults.standard.stringArray(forKey: "foodnameArray") ?? [String](arrayLiteral: "apple_pie","apple_cake","fruit_cake","beef_tartar", "steak")
    }
    



}

