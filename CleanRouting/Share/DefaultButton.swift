//
//  DefaultButton.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 12/07/2021.
//

import UIKit

class DefaultButton: UIButton {
    required init(title: String, target: Any, selector: Selector) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(title, for: .normal)
        setTitleColor(.systemBlue, for: .normal)
        addTarget(target, action: selector, for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
