//
//  UICollecCollectionViewCell.swift
//  DicaFilme1.1
//
//  Created by Usuario Local on 6/11/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import UIKit
import AlamofireImage

class UICollecCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var capaFilme: UIImageView!
    
    
    func atribuiValor(path:String) {
      let url = "https://image.tmdb.org/t/p/w500" + path
        if let imagemURL = URL(string: url) {
            capaFilme.af_setImage(withURL: imagemURL)
        }
        
        
    }
}
