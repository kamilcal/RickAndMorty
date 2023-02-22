//
//  DetailModel.swift
//  RickAndMorty
//
//  Created by kamilcal on 22.02.2023.
//

import Foundation


protocol DetailModelProtocol: AnyObject {
    
    func didDataFetch()
    func didDataCouldntFetch()
}

class DetailModel {
    
    private (set) var detailData: [CharacterData] = []
    
    weak var delegate: DetailModelProtocol?
    
    func fetchDetailData(){
        
    }
}
