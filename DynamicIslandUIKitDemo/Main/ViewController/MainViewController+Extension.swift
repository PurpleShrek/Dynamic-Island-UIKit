//
//  MainViewController+Extension.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 05.10.2022.
//

import UIKit

//MARK: - When user choose server
extension MainViewController: ServiceDelegate {
    func updateChoosedServer(_ indexPath: IndexPath) {
        mainViewUpdate(indexPath)
        dynamicIslandUpdate()
    }
    
    private func mainViewUpdate(_ indexPath: IndexPath) {
        service.setChoosedServer(indexPath)
        let choosedServer = service.choosedServer
        mainView.updateChoosedServer(choosedServer)
    }
    
    private func dynamicIslandUpdate() {
        guard service.dynamicIslandState == true else { return }
        let country = service.splitFlagAndName
        dynamicIslandManager.updateActivity(country)
    }
}

//MARK: - When user press VPN Button
extension MainViewController {
    public func vpnButtonUpdate() {
        service.dynamicIslandState = !service.dynamicIslandState
        mainView.vpnButtonState(service.dynamicIslandState)
    }
    
    func dynamicIslandStartOrStop() {
        switch service.dynamicIslandState {
        case true:
            let country = service.splitFlagAndName
            dynamicIslandManager.startActivity(country)
        case false:
            dynamicIslandManager.stopActivity()
        }
    }
}
