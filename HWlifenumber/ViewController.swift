//
//  ViewController.swift
//  HWlifenumber
//
//  Created by Daniel on 2019/4/18.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dateDatePicker: UIDatePicker!
    
    @IBOutlet weak var resultImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func runUIButton(_ sender: UIButton) {
        let today = dateDatePicker.date
        let calender = Calendar.current
        let year = calender.component(.year, from: today)
        let month = calender.component(.month, from: today)
        let day = calender.component(.day, from: today)
        let countyear = year / 1000 + (year % 1000) / 100 + (year % 100) / 10 + (year % 10) / 1
        let countmonth = month / 10 + month % 10
        let countday = day / 10 + day % 10
        let totalnumber = countyear + countmonth + countday
        var lifenumber = totalnumber / 10 + totalnumber % 10
        if lifenumber == 1 {
           resultImageView.image = UIImage(named:"1")
        } else if lifenumber == 2 {
           resultImageView.image = UIImage(named:"2")
        } else if lifenumber == 3 {
            resultImageView.image = UIImage(named:"3")
        } else if lifenumber == 4 {
            resultImageView.image = UIImage(named:"4")
        } else if lifenumber == 5 {
            resultImageView.image = UIImage(named:"5")
        } else if lifenumber == 6 {
            resultImageView.image = UIImage(named:"6")
        } else if lifenumber == 7 {
            resultImageView.image = UIImage(named:"7")
        } else if lifenumber == 8 {
            resultImageView.image = UIImage(named:"8")
        } else if lifenumber == 9 {
            resultImageView.image = UIImage(named:"9")
        } else if lifenumber == 10 {
            resultImageView.image = UIImage(named:"1")
        }
        
    }
    

}

