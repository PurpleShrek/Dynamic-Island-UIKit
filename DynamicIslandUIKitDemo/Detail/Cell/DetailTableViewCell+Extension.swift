//
//  DetailTableViewCell+Extension.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 04.10.2022.
//

import UIKit

extension DetailTableViewCell {
    //MARK: - Layout
    func makeCountryLabel() -> UILabel {
        UILabel()
    }
    
    //MARK: - AddSubview
    func addSubviews() {
        let subviews = [countryLabel]
        
        subviews.forEach {
            contentView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    //MARK: - Constraints
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            countryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            countryLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
}
