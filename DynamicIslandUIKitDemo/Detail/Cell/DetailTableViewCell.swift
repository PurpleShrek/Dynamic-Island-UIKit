//
//  DetailTableViewCell.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 04.10.2022.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    static let identifier = "detailTableViewCell"
    
    //MARK: - Views
    lazy var countryLabel = makeCountryLabel()
    
    //MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
    
    private func initialize() {
        addSubviews()
        setUpConstraints()
    }
    
    //MARK: - Public Funcs
    public func setCellData(_ text: String) {
        countryLabel.text = text
    }
}
