//
//  ConstructorsDataCell.swift
//  f1races
//
//  Created by Shreya Raj on 09/08/22.
//

import UIKit

class ConstructorsDataCell: UITableViewCell {

    @IBOutlet weak var lblConstructorName: UILabel!
    @IBOutlet weak var lblNationality: UILabel!
    @IBOutlet weak var lblInformation: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
