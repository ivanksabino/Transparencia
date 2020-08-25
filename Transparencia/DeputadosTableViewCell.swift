//
//  DeputadosTableViewCell.swift
//  Transparencia
//
//  Created by Ivan Sabino on 25/08/20.
//  Copyright © 2020 Ivan Sabino. All rights reserved.
//

import UIKit

class DeputadosTableViewCell: UITableViewCell {
    @IBOutlet weak var nomeLabel: UILabel!
    
    @IBOutlet weak var valorLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
