//
//  ListViewModel.swift
//  RickAndMorty
//
//  Created by kamilcal on 10.02.2023.
//

import Foundation

class  ListViewModel{
    
    private let model = ListModel()
    
    var onErrorDetected: ((String) -> ())?
    var refreshItems: (([ListCellModel]) -> ())? 
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
        let cellModels: [ListCellModel] = model.data.map { .init(imageURL: $0.image ?? "", name: $0.name ?? "" , status: $0.status ?? "", gender: $0.gender ?? "") 
        }
        refreshItems?(cellModels)
    }
    func didCacheDataFetch(){
        let cellModels: [ListCellModel] = model.databaseData.map { .init(imageURL: $0.imageUrl ?? "", name: $0.name ?? "" , status: $0.status ?? "", gender: $0.gender ?? "")
        }
        refreshItems?(cellModels)
    }
    func didDataCouldntFetch(){
        onErrorDetected?("Please try again later")
    }
}
