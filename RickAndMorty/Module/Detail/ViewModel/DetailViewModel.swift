//
//  DetailViewModel.swift
//  RickAndMorty
//
//  Created by kamilcal on 22.02.2023.
//

import Foundation

class  DetailViewModel{
    
    private let model = DetailModel()
    
    var onErrorDetected: ((String) -> ())?
    var loadItems: (([ListCellModel]) -> ())?
    
    init(){
        model.delegate = self
    }
    
    func didViewLoad(){
        model.fetchDetailData()
        
    }
    
}

extension DetailViewModel: DetailModelProtocol{
    func didDataFetch() {
        
    }
    
    func didDataCouldntFetch(){
        
    }


}
