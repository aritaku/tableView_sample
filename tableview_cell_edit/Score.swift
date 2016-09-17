//
//  Score.swift
//  tableview_cell_edit
//
//  Created by 有村琢磨 on 2016/09/17.
//  Copyright © 2016年 有村琢磨. All rights reserved.
//

import Foundation

struct Score {
    
    var point: Int = 0
    var date: Date!
    
    init(point: Int, date: Date) {
        self.point = point
        self.date = date
    }
    
}
