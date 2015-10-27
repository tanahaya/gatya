
//
//  ResultViewController.swift
//  gatya
//
//  Created by 田中千洋 on 2015/04/21.
//  Copyright (c) 2015年 田中 颯. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NSLog("渡された乱数は...%dです", number)
        
        if number == 10 {
            monsterImageView.image = UIImage(named: "monster0\(number)")
            backgroundImageView.image = UIImage(named: "bg_gold")
        } else if number >= 8 {
            monsterImageView.image = UIImage(named: "monster00\(number)")
            backgroundImageView.image = UIImage(named: "bg_gold")
        } else if number >= 6 {
            monsterImageView.image = UIImage(named: "monster00\(number)")
            backgroundImageView.image = UIImage(named: "bg_red")
        }else {
            monsterImageView.image = UIImage(named: "monster00\(number)")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
    }    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
