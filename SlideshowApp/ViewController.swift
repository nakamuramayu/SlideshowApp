//
//  ViewController.swift
//  SlideshowApp
//
//  Created by nakamura mayu on 2016/11/26.
//  Copyright © 2016年 nakamura mayu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dispImageNo = 0
    var timer:Timer? = nil
    let imageNameArray = [
        "DSCF3253_TP_V.jpg",
        "KAZU_DSCF5168_TP_V.jpg",
        "SIN0I9A3684_TP_V.jpg",
        ]


    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var onNextbutton: UIButton!
    @IBOutlet weak var onPrevbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let name = imageNameArray[dispImageNo]
        let image = UIImage(named: name)
        imageView.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController:SecondViewController = segue.destination as! SecondViewController
        secondViewController.x = dispImageNo
    }

    func displayImage() {
        if dispImageNo < 0 {
            dispImageNo = 2
        }
        
        if dispImageNo > 2{
            dispImageNo = 0
        }
        
        let name = imageNameArray[dispImageNo]
        
        let image = UIImage(named: name)
        
        imageView.image = image
        
    }
    
    
    @IBAction func StartAndStop(_ sender: Any) {
        if timer == nil {
            timer = Timer.scheduledTimer(
                timeInterval: 2.0,
                target: self,
                selector: #selector(self.onNext),
                userInfo: nil,
                repeats: true)
            timer?.fire()
            onNextbutton.isEnabled = false
            onPrevbutton.isEnabled = false
        } else {
            timer?.invalidate()
            timer = nil
            onNextbutton.isEnabled = true
            onPrevbutton.isEnabled = true
        }
        
    }

    @IBAction func onPrev(_ sender: Any) {
        dispImageNo -= 1
        displayImage()
    }
    
    @IBAction func onNext(_ sender: Any) {
        dispImageNo += 1
        displayImage()
    }
    
    @IBAction func extend(_ sender: Any) {
    }
    
    
    @IBAction func unwind(segue: UIStoryboardSegue){
    }
    
}

