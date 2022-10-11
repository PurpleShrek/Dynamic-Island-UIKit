//
//  DetailViewController.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 04.10.2022.
//

import UIKit

class DetailViewController: UIViewController {
    weak var delegate: ServiceDelegate?
    let service: Service
    let detailView: DetailView
    
    //MARK: - Init
    init(delegate: ServiceDelegate, service: Service) {
        self.delegate = delegate
        self.service = service
        self.detailView = DetailView()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Overriden Funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        showView()
        setTableView(detailView.tableView)
    }
    
    //MARK: - Private Funcs
    private func showView() {
        detailView.frame = view.bounds
        view = detailView
    }
}
