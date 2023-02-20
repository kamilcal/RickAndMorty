//
//  ListCell.swift
//  RickAndMorty
//
//  Created by kamilcal on 11.02.2023.
//

import UIKit
import Kingfisher

class ListCell: UITableViewCell {

    
    @IBOutlet var backGroundImage: UIImageView!
    @IBOutlet private var contImageView: UIImageView!
    @IBOutlet private var nameValueLbl: UILabel!
    @IBOutlet private var genderValueLbl: UILabel!
    @IBOutlet private var statusValueLbl: UILabel!
    @IBOutlet var statusImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    func configure(with model: ListCellModel){
        contImageView.kf.setImage(with: URL.init(string: model.imageURL))
        nameValueLbl.text = model.name
        genderValueLbl.text = model.gender
        statusValueLbl.text = model.status
        switch model.status {
        case "Alive":
            statusImage.backgroundColor = .green
        case "Dead":
            statusImage.backgroundColor = .red
        case "unknown":
            statusImage.backgroundColor = .systemGray
        default:
            statusImage.backgroundColor = .systemGray
        }
    }
    
}

private extension ListCell {
    
    private func setupUI(){
        statusImage.layer.cornerRadius = statusImage.frame.size.width / 2

        backGroundImage.layer.cornerRadius = 10
        
        contImageView.layer.cornerRadius = 10
        contImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        contImageView.kf.indicatorType = .activity
    }
    
}

struct ListCellModel{
    let imageURL: String
    let name: String
    let status: String
    let gender: String
    
}
