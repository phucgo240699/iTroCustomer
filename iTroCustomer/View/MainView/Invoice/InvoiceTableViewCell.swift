//
//  InvoiceTableViewCell.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/9/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

class InvoiceTableViewCell: UITableViewCell {
    
    var container: UIView?
    var roomNameLbl: UILabel?
    var totalPriceLbl: UILabel?
    var thumnailImgView: UIImageView?
    

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
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
