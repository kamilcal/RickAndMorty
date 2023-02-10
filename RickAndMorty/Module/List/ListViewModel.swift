//
//  ListViewModel.swift
//  RickAndMorty
//
//  Created by kamilcal on 10.02.2023.
//

import Foundation

class  ListViewModel{
    
    private let model = ListModel()
    
    var onErrorDetected: (() -> ())?
    var refreshItems: (([Any]) -> ())? //TODO: -
    init(){
        model.delegate = self
    }
    
    func didViewLoad(){
        model.fetchData()
        
    }
    
    func itemPressed(_ index: Int){
//        TODO:
        
    }
    
}

extension ListViewModel: ListModelProtocol{
    func didLiveDataFetch(){
        
    }
    func didCacheDataFetch(){
        
    }
    func didDataCouldntFetch(){
//        TODO:
    }
}
