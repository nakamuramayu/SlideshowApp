//
//  SecondViewController.swift
//  SlideshowApp
//
//  Created by nakamura mayu on 2016/12/03.
//  Copyright © 2016年 nakamura mayu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    
    var x:Int = 0
    let imageNameArray = [
        "DSCF3253_TP_V.jpg",
        "KAZU_DSCF5168_TP_V.jpg",
        "SIN0I9A3684_TP_V.jpg",
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = imageNameArray[x]
        let image = UIImage(named: name)
        ImageView.image = image

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
