//
//  ReportTableViewCell.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/2/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit
import Foundation

class ReportTableViewCell: UITableViewCell {

    var nameReport: UILabel?
    var desciptionReport : UITextView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.9, height: ReportViewController.GetRowHeight())
        
        self.nameReport = UILabel()
        self.desciptionReport = UITextView()
        
        guard let nameReport = nameReport else {
            return
        }
        
        guard let desciptionReport = desciptionReport else {
            return
        }
        
        self.addSubview(nameReport)
        self.addSubview(desciptionReport)
        
        SetupNameReport(nameReport)
        SetupDescriptionReport(desciptionReport)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
