//
//  ListViewController.swift
//  RickAndMorty
//
//  Created by kamilcal on 6.02.2023.
//

import UIKit

class ListViewController: UIViewController {

    
    
    @IBOutlet var listTableView: UITableView!
    
    private let viewModel = ListViewModel()
    private var tableHelper: ListViewControllerTableHelper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.didViewLoad()
        setupBindings()
        setupUI()
        }


}

private extension ListViewController {
    
    private func setupUI(){
        tableHelper = .init(tableView: listTableView, viewModel: viewModel)
    }
    
    func setupBindings() {
        viewModel.onErrorDetected = { [weak self] message in
            let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
            alertController.addAction(.init(title: "ok", style: .default))
            self?.present(alertController, animated: true)
        }
        viewModel.refreshItems = { [weak self] items in
            self?.tableHelper.setItems(items)
        }
    }
}
