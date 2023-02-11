//
//  ListModel.swift
//  RickAndMorty
//
//  Created by kamilcal on 10.02.2023.
//

import Foundation

protocol ListModelProtocol: AnyObject {
    
    func didLiveDataFetch()
    func didCacheDataFetch()
    func didDataCouldntFetch()
}

class ListModel{
    
    private var data: [Any] = []
    
    weak var delegate: ListModelProtocol?
    
    func fetchData(){
        if Internet.isOnline() {
            
        } else {
            
        }
    }
    
    private func saveToCoreData(){
        
    }
    
    func retrieveFromCoreData(){
        
    }
    
}
