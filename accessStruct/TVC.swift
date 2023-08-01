//
//  TVC.swift
//  accessStruct
//
//  Created by Akash Belekar on 07/03/23.
//

import UIKit

class TVC: UITableViewCell {
    @IBOutlet weak var nameLbl:UILabel!
    @IBOutlet weak var ageLbl:UILabel!
    @IBOutlet weak var cityLbl:UILabel!
    @IBOutlet weak var StateLbl:UILabel!
    @IBOutlet weak var CountryLbl:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
