//
//  MainViewController.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 04.10.2022.
//

import UIKit

class MainViewController: UIViewController {
    let mainView: MainView
    var service: Service
    let dynamicIslandManager: LiveActivityManager
    
    //MARK: - Init
    init() {
        self.mainView = MainView()
        self.service = Service()
        self.dynamicIslandManager = LiveActivityManager()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Overriden Funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        showView()
        createActions()
        dynamicIslandManager.stopActivity() //If you terminate app, and reopen it, you need delete previous activities.
        mainView.updateChoosedServer(service.choosedServer)
        mainView.vpnButtonState(service.dynamicIslandState)
    }
    
    //MARK: - Private Funcs
    private func showView() {
        mainView.frame = view.bounds
        view = mainView
    }
    
    private func createActions() {
        mainView.vpnButton.addTarget(self, action: #selector(vpnButtonPressed), for: .touchUpInside)
        mainView.serversButton.addTarget(self, action: #selector(serversButtonPressed), for: .touchUpInside)
    }
    
    //MARK: - Action Funcs
    @objc func vpnButtonPressed(sender: UIButton!) {
        vpnButtonUpdate()
        dynamicIslandStartOrStop()
    }
    
    @objc func serversButtonPressed(sender: UIButton!) {
        let detailVC = DetailViewController(delegate: self, service: service)
        navigationController?.show(detailVC, sender: self)
    }
}
