//
//  ProfileHeaderView.swift
//  Navigation2
//
//  Created by Сергей Устинов on 05.03.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private lazy var displayName: UILabel = {
        let displayNameLabel = UILabel()
        displayNameLabel.text = "Hipster Cat"
        displayNameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        displayNameLabel.textColor = .black
        return displayNameLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(displayName)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
