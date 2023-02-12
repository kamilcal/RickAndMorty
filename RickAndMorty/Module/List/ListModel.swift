//
//  ListModel.swift
//  RickAndMorty
//
//  Created by kamilcal on 10.02.2023.
//

import Foundation
import Alamofire

protocol ListModelProtocol: AnyObject {
    
    func didLiveDataFetch()
    func didCacheDataFetch()
    func didDataCouldntFetch()
}

class ListModel{
    
    private (set) var data: [CharacterData] = []
    
    
    weak var delegate: ListModelProtocol?
    
    func fetchData(){
        if InternetManager.shared.isInternetActive() {
            AF.request("https://rickandmortyapi.com/api/character/?page=1").responseDecodable(of: APIData.self) { (res) in
                guard
                    let response = res.value
                else {
                    self.delegate?.didDataCouldntFetch()
                    return
                }
                self.data = response.results ?? []
                self.delegate?.didLiveDataFetch()
            }
        } else {

        }
    }
    
    private func saveToCoreData(){
        
    }
    
    func retrieveFromCoreData(){
        
    }
    
}
