//
//  TableViewCellBichitos.swift
//  Yolcatzin
//
//  Created by Facultad de Contaduría y Administración  on 19/04/23.
//

import UIKit

class TableViewCellBichitos: UITableViewCell {

    
    @IBOutlet weak var FotoBichitos: UIImageView!
    

    @IBOutlet weak var lblNombre: UILabel!
    
    @IBOutlet weak var lblProducto: UILabel!
    @IBOutlet weak var lblCorreo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
