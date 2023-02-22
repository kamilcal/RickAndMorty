//
//  DetailTableViewCell.swift
//  RickAndMorty
//
//  Created by kamilcal on 20.02.2023.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var backgrImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageDetailView: UIImageView!
    @IBOutlet weak var staticLabel: UILabel!
    @IBOutlet weak var backgrImageDetailView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgrImageDetailView?.layer.cornerRadius = backgrImageDetailView.frame.height/2
        imageDetailView?.layer.cornerRadius = imageDetailView.frame.height/2
    }
    
}
