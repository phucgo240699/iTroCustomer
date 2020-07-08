//
//  SettingTableViewCell.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/6/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    var thumbnail: UIImageView?
    var name: UILabel?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
//        self.frame = CGRect(x: 0, y: 0, width: Int(UIScreen.main.bounds.width * 0.9), height: SettingViewController.GetRowHeight())
        self.frame = CGRect(x: 0.0, y: 0.0, width: UIScreen.main.bounds.width, height: SettingViewController.GetRowHeight())
        
        self.thumbnail = UIImageView()
        self.name = UILabel()
        
        guard let name = name else {
            return
        }
        
        guard let thumbnail = thumbnail else {
            return
        }
        
        self.addSubview(name)
        self.addSubview(thumbnail)

        SetupSettingThumbnail(thumbnail)
        SetupSettingName(name)
        
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
