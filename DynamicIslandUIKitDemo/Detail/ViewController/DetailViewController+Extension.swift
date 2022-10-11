//
//  DetailViewController+Extension.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 04.10.2022.
//

import UIKit

//MARK: - Set TableView
extension DetailViewController {
    func setTableView(_ tableView: UITableView) {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DetailTableViewCell.self, forCellReuseIdentifier: DetailTableViewCell.identifier)
    }
}

//MARK: - Data Source
extension DetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        service.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailTableViewCell.identifier) as! DetailTableViewCell
        cell.setCellData(service.data[indexPath.row])
        return cell
    }
}

//MARK: - Delegate
extension DetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.updateChoosedServer(indexPath)
        navigationController?.popViewController(animated: true)
    }
}
