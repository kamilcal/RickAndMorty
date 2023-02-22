//
//  ListViewControllerTableHelper.swift
//  RickAndMorty
//
//  Created by kamilcal on 11.02.2023.
//

import UIKit

class ListViewControllerTableHelper: NSObject {
    
    typealias RowItem = ListCellModel
    
    private let cellIdentifier = "ListCell"
    
    weak var tableView: UITableView?
    weak var viewModel: ListViewModel?
    private var navigationController: UINavigationController?

    private var items: [RowItem] = []
    
    init(tableView: UITableView, viewModel: ListViewModel){
        self.tableView = tableView
        self.viewModel = viewModel
        super.init()
        
        setupTableView()
    }
    
    private func setupTableView() {
        tableView?.register(.init(nibName: "ListCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
        tableView?.delegate = self
        tableView?.dataSource = self
    }
    
    func setItems(_ items: [RowItem]) {
        self.items = items
        tableView?.reloadData()
    }
}

extension ListViewControllerTableHelper: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        viewModel?.itemPressed(indexPath.row)
        if InternetManager.shared.isInternetActive() {
            let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
            guard let detailsVC = storyBoard.instantiateViewController(withIdentifier: "showDetail") as? DetailViewController else {
                return
            }
            navigationController?.pushViewController(detailsVC, animated: true)
        } else {
        }
    }
}

extension ListViewControllerTableHelper: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ListCell
        cell.configure(with: items[indexPath.row])
        return cell
    }
    
    
}

