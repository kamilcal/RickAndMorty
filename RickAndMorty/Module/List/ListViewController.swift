//
//  ListViewController.swift
//  RickAndMorty
//
//  Created by kamilcal on 6.02.2023.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    private let viewModel = ListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.didViewLoad()
        setupBindings()
    }


}

private extension ListViewController {
    
    func setupBindings(){
        viewModel.onErrorDetected = { [weak self] message in
            
        }
        viewModel.refreshItems = { [weak self] items in
            
        }
    }
}
