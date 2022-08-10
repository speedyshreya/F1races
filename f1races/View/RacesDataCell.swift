//
//  RacesDataCell.swift
//  f1races
//
//  Created by Shreya Raj on 08/08/22.
//

import UIKit

class RacesDataCell: UITableViewCell {

    
    @IBOutlet weak var lblRound: UILabel!
    @IBOutlet weak var lblRaceName: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblCircuit: UILabel!
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
