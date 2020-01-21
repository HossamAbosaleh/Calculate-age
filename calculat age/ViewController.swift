//
//  ViewController.swift
//  calculat age
//
//  Created by Abu Salleeiihh on 12/22/19.
//  Copyright © 2019 Abu Salleeiihh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet  var  dataPicker : UIDatePicker!
    @IBOutlet var displyAge : UILabel!
    @IBOutlet weak var buttnCalculat: UIButton!
    @IBOutlet weak var welcomeLable: UILabel!
    @IBOutlet weak var veiwPl: UIView!
    @IBOutlet weak var gaiudLable : UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       welcomeLable.layer.cornerRadius = 20
        buttnCalculat.layer.cornerRadius = 20
       displyAge.layer.cornerRadius = 20
        dataPicker.dataPaickerDesign()
        veiwPl.uiviewdesign()
    }
    
    @IBAction func  calcoulateAge() {
        
      let calendar = Calendar.current
            let components = calendar.dateComponents([.year,.month,.day], from: Date())
            var currentDay = components.day
            var currentMonth = components.month
            var currentYear = components.year

            let userComponents = calendar.dateComponents([.year,.month,.day], from: dataPicker.date)
            let userDay = userComponents.day
            let userMonth = userComponents.month
            let userYear = userComponents.year
        
        
                   var restaYear = currentYear! - userYear!
                   var restaMonth = currentMonth! - userMonth!
                   var restaDay = currentDay! - userDay!
         displyAge.text = " عايش من  \(restaYear)  سنة  و  \(restaMonth)  شهر  و  \(restaDay) يوم "
        if currentDay! < userDay! {
            currentDay! += 30
            currentMonth! -= 1
                
             restaYear = currentYear! - userYear!
             restaMonth = currentMonth! - userMonth!
             restaDay = currentDay! - userDay!
    displyAge.text = " عايش من  \(restaYear)  سنة  و  \(restaMonth)  شهر  و  \(restaDay) يوم "
        }
        if currentMonth! < userMonth!  {
            currentMonth! += 12
            currentYear! -= 1
             restaYear = currentYear! - userYear!
             restaMonth = currentMonth! - userMonth!
             restaDay = currentDay! - userDay!
     displyAge.text = " عايش من  \(restaYear)  سنة  و  \(restaMonth)  شهر  و  \(restaDay) يوم "
        }
       
        
         if currentDay! == userDay! {
            displyAge.text = " عايش من \(restaYear) سنة و \(restaMonth) شهر بس  "
            
        }
        if currentMonth! == userMonth! {

            
            displyAge.text = " عايش من \(restaYear) سنة و \(restaDay) يوم بس "
            
            
        }
        if currentMonth! == userMonth! && currentDay! == userDay! {
            
            displyAge.text = "عايش من \(restaYear) سنة بس"
                       
        }
        if  userYear! > currentYear! {
                      
                      
                      restaYear = currentYear! - userYear!
                      restaMonth = currentMonth! - userMonth!
                      restaDay = currentDay! - userDay!

                      displyAge.text = "الف الف مبروك يبركه لسه متولدش , ممكن منهزرش بقا "
        }
        
            
        
      
        
       
   
    
    }
   
}
extension UIView {
    func uiviewdesign() {
        self.layer.cornerRadius = 20.0
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = 13.0
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
    
    }
}

extension UIDatePicker {
    func dataPaickerDesign() {
         self.backgroundColor = #colorLiteral(red: 0.2100107968, green: 0.2233758867, blue: 1, alpha: 1)
         self.setValue(UIColor.white, forKeyPath: "textColor")
         self.datePickerMode = .countDownTimer
         self.datePickerMode = .date
         self.layer.cornerRadius = 15
        self.layer.masksToBounds = true ;

    }
    
}

