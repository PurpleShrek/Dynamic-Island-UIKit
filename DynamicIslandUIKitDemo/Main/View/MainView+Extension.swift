//
//  MainView+Extension.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 04.10.2022.
//

import UIKit

extension MainView {
    //MARK: - Layout
    func makeChoosedServerLabel() -> UILabel {
        let label = UILabel()
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .center
        label.font = label.font.withSize(50)
        return label
    }
    
    func makeServersButton() -> UIButton {
        let button = UIButton()
        button.setTitle("Choose Server", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        return button
    }
    
    func makeVpnButton() -> UIButton {
        let button = UIButton()
        button.titleLabel?.numberOfLines = 2
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.black, for: .normal)
        return button
    }
    
    //MARK: - AddSubview
    func addSubviews() {
        let subviews = [serverLabel, serversButton, vpnButton]
        
        subviews.forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    //MARK: - Constraints
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            serverLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            serverLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            serverLabel.bottomAnchor.constraint(equalTo: serversButton.topAnchor, constant: -30),
            
            serversButton.widthAnchor.constraint(equalToConstant: 300),
            serversButton.heightAnchor.constraint(equalToConstant: 60),
            serversButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            serversButton.bottomAnchor.constraint(equalTo: centerYAnchor, constant: -15),
            
            vpnButton.widthAnchor.constraint(equalToConstant: 300),
            vpnButton.heightAnchor.constraint(equalToConstant: 60),
            vpnButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            vpnButton.topAnchor.constraint(equalTo: centerYAnchor, constant: 15)

        ])
    }
}
