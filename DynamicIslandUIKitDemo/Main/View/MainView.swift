//
//  MainView.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 04.10.2022.
//

import UIKit

class MainView: UIView {
    //MARK: - Views
    lazy var serverLabel = makeChoosedServerLabel()
    lazy var serversButton = makeServersButton()
    lazy var vpnButton = makeVpnButton()
    
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        addSubviews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Public funcs
    public func updateChoosedServer(_ serverName: String) {
        serverLabel.text = serverName
    }
    
    public func vpnButtonState(_ state: Bool) {
        switch state {
        case true:
            vpnButton.setTitle("Dynamic Island is enabled\n(Press for stop VPN)", for: .normal)
            vpnButton.backgroundColor = .systemGreen
        case false:
            vpnButton.setTitle("Dynamic Island is disabled\n(Press for start VPN)", for: .normal)
            vpnButton.backgroundColor = .systemRed
        }
    }
}
