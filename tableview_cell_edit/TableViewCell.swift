//
//  TableViewCell.swift
//  tableview_cell_edit
//
//  Created by 有村琢磨 on 2016/09/17.
//  Copyright © 2016年 有村琢磨. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        scoreLabel.text = "得点"
        dateLabel.text = "日付"
    }
    
}
