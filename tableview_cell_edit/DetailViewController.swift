//
//  DetailViewController.swift
//  tableview_cell_edit
//
//  Created by 有村琢磨 on 2016/09/17.
//  Copyright © 2016年 有村琢磨. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var dateLabel: UILabel!
    
    var indexNumber: Int = 0
    
    var userDefault = UserDefaults.standard
    var scoreArray = [Score]()
    var nowDate: Date!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        nowDate = Date()
        dateLabel.text = String(describing: nowDate)
        scoreArray = userDefault.array(forKey: "score") as! [Score]
        textField.text = String(describing: scoreArray[indexNumber])
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        scoreArray[indexNumber].point = Int(textField.text!)!
        scoreArray[indexNumber].date = nowDate
        
        userDefault.setValue(scoreArray, forKey: "score")
        userDefault.synchronize()
    }
}
