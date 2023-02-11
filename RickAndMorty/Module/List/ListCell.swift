//
//  ListCell.swift
//  RickAndMorty
//
//  Created by kamilcal on 11.02.2023.
//

import UIKit
import Kingfisher

class ListCell: UITableViewCell {

    
    @IBOutlet private var contImageView: UIImageView!
    @IBOutlet private var nameTitleLbl: UILabel!
    @IBOutlet private var nameValueLbl: UILabel!
    @IBOutlet private var genderTitleLbl: UILabel!
    @IBOutlet private var genderValueLbl: UILabel!
    @IBOutlet private var statusTitleLbl: UILabel!
    @IBOutlet private var statusValueLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    func configure(with model: ListCellModel){
        contImageView.kf.setImage(with: URL.init(string: model.imageURL))
        nameValueLbl.text = model.name
        genderValueLbl.text = model.gender
        statusValueLbl.text = model.status
    }
    
}

private extension ListCell {
    
    private func setupUI(){
        nameTitleLbl.text = "Name"
        genderTitleLbl.text = "Gender"
        statusTitleLbl.text = "Status"
    }
}

struct ListCellModel{
    let imageURL: String
    let name: String
    let status: String
    let gender: String
    
}
